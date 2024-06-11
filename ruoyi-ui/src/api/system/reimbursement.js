import request from '@/utils/request'

// 查询报销列表
export function listReimbursement(query) {
  return request({
    url: '/system/reimbursement/list',
    method: 'get',
    params: query
  })
}

// 查询报销详细
export function getReimbursement(projectId) {
  return request({
    url: '/system/reimbursement/' + projectId,
    method: 'get'
  })
}

// 新增报销
export function addReimbursement(data) {
  return request({
    url: '/system/reimbursement',
    method: 'post',
    data: data
  })
}

// 修改报销
export function updateReimbursement(data) {
  return request({
    url: '/system/reimbursement',
    method: 'put',
    data: data
  })
}

// 删除报销
export function delReimbursement(projectId) {
  return request({
    url: '/system/reimbursement/' + projectId,
    method: 'delete'
  })
}
