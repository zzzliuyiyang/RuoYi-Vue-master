import request from '@/utils/request'

// 查询申请管理列表
export function listApply(query) {
  return request({
    url: '/system/apply/list',
    method: 'get',
    params: query
  })
}

// 查询申请管理详细
export function getApply(id) {
  return request({
    url: '/system/apply/' + id,
    method: 'get'
  })
}

// 新增申请管理
export function addApply(data) {
  return request({
    url: '/system/apply',
    method: 'post',
    data: data
  })
}

// 修改申请管理
export function updateApply(data) {
  return request({
    url: '/system/apply',
    method: 'put',
    data: data
  })
}

// 删除申请管理
export function delApply(id) {
  return request({
    url: '/system/apply/' + id,
    method: 'delete'
  })
}

// 添加活动用户关联
export function addApplyUser(data) {
  return request({
    url: '/system/apply/adduser',
    method: 'put',
    data: data
  })
}
