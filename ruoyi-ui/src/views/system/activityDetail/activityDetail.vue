<template>
  <div class="app-container">

    <div class="top-section">
      <div v-loading="loading" class="activity-grid">
        <div v-for="item in activity" :key="item.activityId">
          <div class="activity-card">
            <div class="card-header">
              <span class="card-title">{{ item.activityName }}</span>
            </div>
            <div class="card-content">
              <div class="card-row">
                <div class="left-section">
                  <div class="label">创建人:</div>
                  <div class="value">{{ item.userName }}</div>
                </div>
                <div class="left-section">
                  <div class="label">活动进度:</div>
                  <dict-tag :options="dict.type.activity_progress" :value="item.activityProgress"/>
                </div>
                <div class="right-section">
                  <div class="label">开始时间:</div>
                  <div class="value">{{ parseTime(item.processTime, '{y}-{m}-{d}') }}</div>
                </div>
                <div class="right-section">
                  <div class="label">结束时间:</div>
                  <div class="value">{{ parseTime(item.finishTime, '{y}-{m}-{d}') }}</div>
                </div>
              </div>
            </div>
          </div>
          <!-- 活动介绍放在卡片内容的外部 -->
          <div class="remark">
            <div class="label">活 动 介 绍</div>
            <div class="value">{{ item.remark }}</div>
          </div>
        </div>
      </div>
    </div>
    <div class="divider"></div>


    <!-- 图片部分开始 -->
    <div class="photo-section">
      <div class="photo-item">
        <img src="~@/assets/images/1.jpg" alt="辩论赛">
        <div class="about">辩论赛</div>
      </div>
      <div class="photo-item">
        <img src="~@/assets/images/2.jpg" alt="篮球赛">
        <div class="about">篮球赛</div>
      </div>
      <div class="photo-item">
        <img src="~@/assets/images/3.jpg" alt="心理沙龙">
        <div class="about">心理沙龙</div>
      </div>
      <div class="photo-item">
        <img src="~@/assets/images/4.jpg" alt="野炊">
        <div class="about">野炊</div>
      </div>
    </div>
    <!-- 图片部分结束 -->

    <div class="bottom-section">
      <h2 class="forum-title">论坛发言</h2>
      <comment :comments="commentData" @sendComment="addSonComment" :key="refreshKey"></comment>
    </div>

    <div class="comment-box">
      <h2>添加评论</h2>
      <textarea v-model="newComment" placeholder="输入你的评论"></textarea>
      <button @click="addComment">添加评论</button>
    </div>
  </div>
</template>

<script>
import {
  listActivity,
  getActivityById,
} from "@/api/system/activity";
import {getFilesByActivityId}from"@/api/system/files";
import * as CommentData from '/src/views/system/activityDetail/mockdata';
import comment from '/src/views/system/activityDetail/comment';
import {addReply, addSonReply, getReply, getReplyActivity} from "@/api/system/reply";

export default {
  name: "Activity",
  dicts: ['activity_progress'],
  components: {
    comment
  },
  data() {
    return {
      newComment:'',
      activityId: null,
      loading: true,
      ids: [],
      checkedActivityUser: [],
      single: true,
      multiple: true,
      showSearch: true,
      total: 0,
      activityList: [],
      activityUserList: [],
      //评论区组件刷新
      refreshKey:0,
      title: "",
      open: false,
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        activityName: null,
        userId: null,
        activityProgress: null,
        budget: null,
        expend: null,
        createdTime: null,
        prepareTime: null,
        processTime: null,
        finishTime: null,
        resourceId: null,
      },
      form: {},
      photo: {},
      reply: {},

      sonfrom:{},


      //原生图片
      originPhoto: {},

      // ID查询活动数据

      activity: {},
      commentData: [],
    };
  },
  created() {
    let activityId = this.$route.query.activityId;
    console.log(activityId);
    this.getActivityById(activityId);
    this.getComment(activityId);

    //this.commentData = CommentData.comment.data;
    this.activityId = activityId;
    console.log(this.originPhoto.filePath);
    console.log(this.activityList);

  },
  methods: {
    /** 提交主评论 */
    addComment() {
      if (this.newComment.trim() !== '') {
        this.resetReply();
        this.reply.activityId = this.activityId;
        this.reply.fromId = this.$store.state.user.id;
        this.reply.fromName = this.$store.state.user.nickName;
        this.reply.fromAvatar = this.$store.state.user.avatar;
        this.reply.content = this.newComment;
        this.reply.date = new Date();
        this.reply.likeNum = 0;
        addReply(this.reply);
        this.newComment = '';
        this.getComment(this.activityId);
        this.refreshKey++;
      } else {
        alert('评论不能为空');
      }
    },

    // /** 提交子评论 */
    // addSonComment(data) {
    //   let obj = {};
    //   obj.fromId = this.$store.state.user.id;
    //   obj.fromName = this.$store.state.user.nickName;
    //   obj.fromAvatar = this.$store.state.user.avatar;
    //   obj.toId = data.toId;
    //   obj.toName = data.toName;
    //   obj.toAvatar = data.toAvatar;
    //   obj.date = new Date();
    //   obj.content = data.content;
    //   this.appendReplyList.push(obj);
    // },

    /** 提交子评论 */
    addSonComment(data) {
      this.sonfrom.fromId = this.$store.state.user.id;
      this.sonfrom.fromName = this.$store.state.user.nickName;
      this.sonfrom.fromAvatar = this.$store.state.user.avatar;
      this.sonfrom.toId = data.toId;
      this.sonfrom.toName = data.toName;
      this.sonfrom.toAvatar = data.toAvatar;
      this.sonfrom.date = new Date();
      this.sonfrom.content = data.content;
      this.sonfrom.commentId = data.commentId;
      addSonReply(this.sonfrom);
      this.getComment(this.activityId);
      this.refreshKey++;
    },

    getActivityById(activityId) {
      this.loading = true;
      Promise.all([
        getActivityById(activityId).then(response => {
          this.activityList = response.data;
          this.activity=response.data;
        }),
        getFilesByActivityId(activityId).then(response => {
          this.originPhoto = response.data;
          this.activityList = this.activityList.map(activity => {
            if (activity.activityId === activityId) {
              return { ...activity, filePath: this.originPhoto.filePath };
            }
            return activity;
          });
        })
      ]).then(() => {
        this.loading = false;
      });
    },



    /** 查询评论区 */
    getComment(activityId) {
      this.loading = true;
      getReplyActivity(activityId).then(response => {
        this.commentData = response.data;
      }).then(() => {
        this.loading = false;
      })
    },



    /** 查询活动管理列表 */

    getList() {
      this.loading = true;
      listActivity(this.queryParams).then(response => {
        this.activityList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    resetPhoto() {
      this.photo = {
        fileId: null,
        fileName: null,
        filePath: null,
        uploadBy: null,
        activityId: null
      };
      this.resetForm("photo");
    },
    // 表单重置
    resetReply() {
      this.reply = {
        id: null,
        date: null,
        activityId: null,
        fromId: null,
        fromName: null,
        fromAvatar: null,
        likeNum: null,
        content: null
      };
      this.appendReplyList = [];
      this.resetForm("reply");
    },
    rowActivityUserIndex({ row, rowIndex }) {
      row.index = rowIndex + 1;
    },
  },
};
</script>

<style scoped>
/* 引入背景图 */
@import url('/src/assets/images/bg.png');


.app-container {
  font-family: Arial, sans-serif;
  text-align: center;
  padding: 20px; /* 添加页边距 */
}



.top-section {
  background-image: url('~@/assets/images/bg.png'); /* 设置背景图 */
  background-size: cover; /* 背景图覆盖整个容器 */
  background-position: center; /* 背景图居中 */
  background-repeat: no-repeat; /* 背景图不重复 */
  padding: 20px; /* 内边距 */
}

.activity-grid {
  display: flex;
  flex-wrap: wrap;
  gap: 20px;
  justify-content: center;
}

.activity-card {
  width: 100%;
}

.card-header {
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 20px;
}

.card-title {
  font-size: 24px;
  font-weight: 700;
}

.card-content {
  padding: 20px;
}

.card-row {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 10px;
}

.label {
  font-weight: 500;
}

.value {
  color: #606266;
}

.left-section {
  flex: 1;
}

.right-section {
  flex: 1;
  text-align: right;
}

.remark {
  margin-top: 20px;
  padding: 15px; /* 添加内边距 */
  border: 1px solid #fad687; /* 添加边框并设置颜色为浅蓝色 */
  border-radius: 15px; /* 设置边框为椭圆形 */
  margin-left: 300px; /* 向右移动 */
  margin-right: 20px; /* 距离页边距远一点 */
}

.remark .label {
  font-weight: 500;
  color: #a6cd32; /* 灰绿色 */
  font-size: 20px; /* 增大字体 */
  margin-bottom: 20px; /* 增加底部距离 */
}

.remark .value {
  color: #606266;
  letter-spacing: 2px; /* 增加字体间距 */
}

.divider {
  border-top: 2px dashed #ccc;
  margin: 40px 0; /* 设置上下间距 */
}

.photo-section {
  display: flex;
  justify-content: center;
  gap: 20px;
  margin-bottom: 20px;
}

.photo-item {
  height: 200px;
  width: 200px;
  border-radius: 100px;
  background-color: skyblue;
  position: relative;
  overflow: hidden;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.photo-item:hover {
  transform: scale(1.1);
  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
}

.photo-item img {
  height: 100%;
  width: 100%;
  object-fit: cover;
}

.about {
  position: absolute;
  color: rgb(255, 255, 255);
  font-size: 13px;
  height: 20%;
  line-height: 40px;
  text-align: center;
  width: 100%;
  bottom: 0;
  left: 0;
  background-color: rgba(251, 251, 251, 0.4);
}

.bottom-section {
  padding: 20px; /* 内边距 */
}

.forum-title {
  font-size: 28px;
  font-weight: 700;
  color: #333;
}
</style>
