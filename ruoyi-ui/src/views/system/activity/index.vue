<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="活动名称" prop="activityName">
        <el-input
          v-model="queryParams.activityName"
          placeholder="请输入活动名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="创建人ID" prop="userId">
        <el-input
          v-model="queryParams.userId"
          placeholder="请输入创建人ID"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="活动进度" prop="activityProgress">
        <el-select v-model="queryParams.activityProgress" placeholder="请选择活动进度" clearable>
          <el-option
            v-for="dict in dict.type.activity_progress"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
<!--      <el-form-item label="活动预算" prop="budget">-->
<!--        <el-input-->
<!--          v-model="queryParams.budget"-->
<!--          placeholder="请输入活动预算"-->
<!--          clearable-->
<!--          @keyup.enter.native="handleQuery"-->
<!--        />-->
<!--      </el-form-item>-->
<!--      <el-form-item label="已花费金额" prop="expend">-->
<!--        <el-input-->
<!--          v-model="queryParams.expend"-->
<!--          placeholder="请输入已花费金额"-->
<!--          clearable-->
<!--          @keyup.enter.native="handleQuery"-->
<!--        />-->
<!--      </el-form-item>-->
      <el-form-item label="创建时间" prop="createdTime">
        <el-date-picker clearable
          v-model="queryParams.createdTime"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择创建时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="筹备开始时间" prop="prepareTime">
        <el-date-picker clearable
          v-model="queryParams.prepareTime"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择筹备开始时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="开始进行时间" prop="processTime">
        <el-date-picker clearable
          v-model="queryParams.processTime"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择开始进行时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="结束时间" prop="finishTime">
        <el-date-picker clearable
          v-model="queryParams.finishTime"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择结束时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="资源ID" prop="resourceId">
        <el-input
          v-model="queryParams.resourceId"
          placeholder="请输入资源ID"
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
          v-hasPermi="['system:activity:add']"
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
          v-hasPermi="['system:activity:edit']"
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
          v-hasPermi="['system:activity:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['system:activity:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="activityList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="活动ID" align="center" prop="activityId" />
      <el-table-column label="活动名称" align="center" prop="activityName" />
      <el-table-column label="创建人ID" align="center" prop="userId" />
      <el-table-column label="活动进度" align="center" prop="activityProgress">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.activity_progress" :value="scope.row.activityProgress"/>
        </template>
      </el-table-column>
      <el-table-column label="活动预算" align="center" prop="budget" />
      <el-table-column label="已花费金额" align="center" prop="expend" />
      <el-table-column label="创建时间" align="center" prop="createdTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.createdTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="筹备开始时间" align="center" prop="prepareTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.prepareTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="开始进行时间" align="center" prop="processTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.processTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="结束时间" align="center" prop="finishTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.finishTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="资源ID" align="center" prop="resourceId" />
      <el-table-column label="备注" align="center" prop="remark" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system:activity:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system:activity:remove']"
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

    <!-- 添加或修改活动管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="活动名称" prop="activityName">
          <el-input v-model="form.activityName" placeholder="请输入活动名称" />
        </el-form-item>
        <el-form-item label="创建人ID" prop="userId">
          <el-input v-model="form.userId" placeholder="请输入创建人ID" />
        </el-form-item>
        <el-form-item label="活动进度" prop="activityProgress">
          <el-select v-model="form.activityProgress" placeholder="请选择活动进度">
            <el-option
              v-for="dict in dict.type.activity_progress"
              :key="dict.value"
              :label="dict.label"
              :value="parseInt(dict.value)"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="活动预算" prop="budget">
          <el-input v-model="form.budget" placeholder="请输入活动预算" />
        </el-form-item>
        <el-form-item label="已花费金额" prop="expend">
          <el-input v-model="form.expend" placeholder="请输入已花费金额" />
        </el-form-item>
        <el-form-item label="创建时间" prop="createdTime">
          <el-date-picker clearable
            v-model="form.createdTime"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择创建时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="筹备开始时间" prop="prepareTime">
          <el-date-picker clearable
            v-model="form.prepareTime"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择筹备开始时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="开始进行时间" prop="processTime">
          <el-date-picker clearable
            v-model="form.processTime"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择开始进行时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="结束时间" prop="finishTime">
          <el-date-picker clearable
            v-model="form.finishTime"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择结束时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="资源ID" prop="resourceId">
          <el-input v-model="form.resourceId" placeholder="请输入资源ID" />
        </el-form-item>
        <el-form-item label="备注">
          <editor v-model="form.remark" :min-height="192"/>
        </el-form-item>
        <el-divider content-position="center">用户和活动关联信息</el-divider>
        <el-row :gutter="10" class="mb8">
          <el-col :span="1.5">
            <el-button type="primary" icon="el-icon-plus" size="mini" @click="handleAddActivityUser">添加</el-button>
          </el-col>
          <el-col :span="1.5">
            <el-button type="danger" icon="el-icon-delete" size="mini" @click="handleDeleteActivityUser">删除</el-button>
          </el-col>
        </el-row>
        <el-table :data="activityUserList" :row-class-name="rowActivityUserIndex" @selection-change="handleActivityUserSelectionChange" ref="activityUser">
          <el-table-column type="selection" width="50" align="center" />
          <el-table-column label="序号" align="center" prop="index" width="50"/>
          <el-table-column label="用户ID" prop="userId" width="150">
            <template slot-scope="scope">
              <el-input v-model="scope.row.userId" placeholder="请输入用户ID" />
            </template>
          </el-table-column>
          <el-table-column label="用户职位" prop="userPosition" width="150">
            <template slot-scope="scope">
              <el-input v-model="scope.row.userPosition" placeholder="请输入用户职位" />
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
import { listActivity, getActivity, delActivity, addActivity, updateActivity } from "@/api/system/activity";

export default {
  name: "Activity",
  dicts: ['activity_progress'],
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 子表选中数据
      checkedActivityUser: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 活动管理表格数据
      activityList: [],
      // 用户和活动关联表格数据
      activityUserList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
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
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        activityName: [
          { required: true, message: "活动名称不能为空", trigger: "blur" }
        ],
        userId: [
          { required: true, message: "创建人ID不能为空", trigger: "blur" }
        ],
        resourceId: [
          { required: true, message: "资源ID不能为空", trigger: "blur" }
        ],
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询活动管理列表 */
    getList() {
      this.loading = true;
      listActivity(this.queryParams).then(response => {
        this.activityList = response.rows;
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
        activityId: null,
        activityName: null,
        userId: null,
        activityProgress: null,
        budget: null,
        expend: null,
        createdTime: null,
        prepareTime: null,
        processTime: null,
        finishTime: null,
        updatedBy: null,
        updatedTime: null,
        resourceId: null,
        remark: null
      };
      this.activityUserList = [];
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
      this.ids = selection.map(item => item.activityId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加活动管理";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const activityId = row.activityId || this.ids
      getActivity(activityId).then(response => {
        this.form = response.data;
        this.activityUserList = response.data.activityUserList;
        this.open = true;
        this.title = "修改活动管理";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          this.form.activityUserList = this.activityUserList;
          if (this.form.activityId != null) {
            updateActivity(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addActivity(this.form).then(response => {
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
      const activityIds = row.activityId || this.ids;
      this.$modal.confirm('是否确认删除活动管理编号为"' + activityIds + '"的数据项？').then(function() {
        return delActivity(activityIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
	/** 用户和活动关联序号 */
    rowActivityUserIndex({ row, rowIndex }) {
      row.index = rowIndex + 1;
    },
    /** 用户和活动关联添加按钮操作 */
    handleAddActivityUser() {
      let obj = {};
      obj.userId = "";
      obj.userPosition = "";
      this.activityUserList.push(obj);
    },
    /** 用户和活动关联删除按钮操作 */
    handleDeleteActivityUser() {
      if (this.checkedActivityUser.length == 0) {
        this.$modal.msgError("请先选择要删除的用户和活动关联数据");
      } else {
        const activityUserList = this.activityUserList;
        const checkedActivityUser = this.checkedActivityUser;
        this.activityUserList = activityUserList.filter(function(item) {
          return checkedActivityUser.indexOf(item.index) == -1
        });
      }
    },
    /** 复选框选中数据 */
    handleActivityUserSelectionChange(selection) {
      this.checkedActivityUser = selection.map(item => item.index)
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/activity/export', {
        ...this.queryParams
      }, `activity_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
