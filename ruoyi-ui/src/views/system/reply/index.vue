<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="评论时间" prop="date">
        <el-date-picker clearable
          v-model="queryParams.date"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择评论时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="活动id" prop="activityId">
        <el-input
          v-model="queryParams.activityId"
          placeholder="请输入活动id"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="评论者id" prop="fromId">
        <el-input
          v-model="queryParams.fromId"
          placeholder="请输入评论者id"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="评论者昵称" prop="fromName">
        <el-input
          v-model="queryParams.fromName"
          placeholder="请输入评论者昵称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="评论者头像路径" prop="fromAvatar">
        <el-input
          v-model="queryParams.fromAvatar"
          placeholder="请输入评论者头像路径"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="点赞人数" prop="likeNum">
        <el-input
          v-model="queryParams.likeNum"
          placeholder="请输入点赞人数"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['system:reply:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['system:reply:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['system:reply:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['system:reply:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="replyList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="主键id" align="center" prop="id" />
      <el-table-column label="评论时间" align="center" prop="date" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.date, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="活动id" align="center" prop="activityId" />
      <el-table-column label="评论者id" align="center" prop="fromId" />
      <el-table-column label="评论者昵称" align="center" prop="fromName" />
      <el-table-column label="评论者头像路径" align="center" prop="fromAvatar" />
      <el-table-column label="点赞人数" align="center" prop="likeNum" />
      <el-table-column label="评论内容" align="center" prop="content" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system:reply:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system:reply:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改评论对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="评论时间" prop="date">
          <el-date-picker clearable
            v-model="form.date"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择评论时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="活动id" prop="activityId">
          <el-input v-model="form.activityId" placeholder="请输入活动id" />
        </el-form-item>
        <el-form-item label="评论者id" prop="fromId">
          <el-input v-model="form.fromId" placeholder="请输入评论者id" />
        </el-form-item>
        <el-form-item label="评论者昵称" prop="fromName">
          <el-input v-model="form.fromName" placeholder="请输入评论者昵称" />
        </el-form-item>
        <el-form-item label="评论者头像路径" prop="fromAvatar">
          <el-input v-model="form.fromAvatar" placeholder="请输入评论者头像路径" />
        </el-form-item>
        <el-form-item label="点赞人数" prop="likeNum">
          <el-input v-model="form.likeNum" placeholder="请输入点赞人数" />
        </el-form-item>
        <el-form-item label="评论内容" prop="content">
          <el-input v-model="form.content" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-divider content-position="center">回复评论信息</el-divider>
        <el-row :gutter="10" class="mb8">
          <el-col :span="1.5">
            <el-button type="primary" icon="el-icon-plus" size="mini" @click="handleAddAppendReply">添加</el-button>
          </el-col>
          <el-col :span="1.5">
            <el-button type="danger" icon="el-icon-delete" size="mini" @click="handleDeleteAppendReply">删除</el-button>
          </el-col>
        </el-row>
        <el-table :data="appendReplyList" :row-class-name="rowAppendReplyIndex" @selection-change="handleAppendReplySelectionChange" ref="appendReply">
          <el-table-column type="selection" width="50" align="center" />
          <el-table-column label="序号" align="center" prop="index" width="50"/>
          <el-table-column label="评论者id" prop="fromId" width="150">
            <template slot-scope="scope">
              <el-input v-model="scope.row.fromId" placeholder="请输入评论者id" />
            </template>
          </el-table-column>
          <el-table-column label="评论者昵称" prop="fromName" width="150">
            <template slot-scope="scope">
              <el-input v-model="scope.row.fromName" placeholder="请输入评论者昵称" />
            </template>
          </el-table-column>
          <el-table-column label="评论者头像路径" prop="fromAvatar" width="150">
            <template slot-scope="scope">
              <el-input v-model="scope.row.fromAvatar" placeholder="请输入评论者头像路径" />
            </template>
          </el-table-column>
          <el-table-column label="被评论者id" prop="toId" width="150">
            <template slot-scope="scope">
              <el-input v-model="scope.row.toId" placeholder="请输入被评论者id" />
            </template>
          </el-table-column>
          <el-table-column label="被评论者昵称" prop="toName" width="150">
            <template slot-scope="scope">
              <el-input v-model="scope.row.toName" placeholder="请输入被评论者昵称" />
            </template>
          </el-table-column>
          <el-table-column label="被评论者头像" prop="toAvatar" width="150">
            <template slot-scope="scope">
              <el-input v-model="scope.row.toAvatar" placeholder="请输入被评论者头像" />
            </template>
          </el-table-column>
          <el-table-column label="评论内容" prop="content" type="textarea" width="150">
            <template slot-scope="scope">
              <el-input v-model="scope.row.content" placeholder="请输入评论" />
            </template>
          </el-table-column>
          <el-table-column label="评论时间" prop="date" width="240">
            <template slot-scope="scope">
              <el-date-picker clearable v-model="scope.row.date" type="date" value-format="yyyy-MM-dd-HH-mm"  placeholder="请选择评论时间" />
            </template>
          </el-table-column>
        </el-table>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listReply, getReply, delReply, addReply, updateReply } from "@/api/system/reply";

export default {
  name: "Reply",
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 子表选中数据
      checkedAppendReply: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 评论表格数据
      replyList: [],
      // 回复评论表格数据
      appendReplyList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        date: null,
        activityId: null,
        fromId: null,
        fromName: null,
        fromAvatar: null,
        likeNum: null,
        content: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        date: [
          { required: true, message: "评论时间不能为空", trigger: "blur" }
        ],
        activityId: [
          { required: true, message: "活动id不能为空", trigger: "blur" }
        ],
        fromId: [
          { required: true, message: "评论者id不能为空", trigger: "blur" }
        ],
        fromName: [
          { required: true, message: "评论者昵称不能为空", trigger: "blur" }
        ],
        fromAvatar: [
          { required: true, message: "评论者头像路径不能为空", trigger: "blur" }
        ],
        likeNum: [
          { required: true, message: "点赞人数不能为空", trigger: "blur" }
        ],
        content: [
          { required: true, message: "评论内容不能为空", trigger: "blur" }
        ]
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询评论列表 */
    getList() {
      this.loading = true;
      listReply(this.queryParams).then(response => {
        this.replyList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
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
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加评论";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getReply(id).then(response => {
        this.form = response.data;
        this.appendReplyList = response.data.appendReplyList;
        this.open = true;
        this.title = "修改评论";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          this.form.appendReplyList = this.appendReplyList;
          if (this.form.id != null) {
            updateReply(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addReply(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除评论编号为"' + ids + '"的数据项？').then(function() {
        return delReply(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
	/** 回复评论序号 */
    rowAppendReplyIndex({ row, rowIndex }) {
      row.index = rowIndex + 1;
    },
    /** 回复评论添加按钮操作 */
    handleAddAppendReply() {
      let obj = {};
      obj.fromId = "";
      obj.fromName = "";
      obj.fromAvatar = "";
      obj.toId = "";
      obj.toName = "";
      obj.toAvatar = "";
      obj.date = "";
      obj.content = "";
      this.appendReplyList.push(obj);
    },
    /** 回复评论删除按钮操作 */
    handleDeleteAppendReply() {
      if (this.checkedAppendReply.length == 0) {
        this.$modal.msgError("请先选择要删除的回复评论数据");
      } else {
        const appendReplyList = this.appendReplyList;
        const checkedAppendReply = this.checkedAppendReply;
        this.appendReplyList = appendReplyList.filter(function(item) {
          return checkedAppendReply.indexOf(item.index) == -1
        });
      }
    },
    /** 复选框选中数据 */
    handleAppendReplySelectionChange(selection) {
      this.checkedAppendReply = selection.map(item => item.index)
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/reply/export', {
        ...this.queryParams
      }, `reply_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
