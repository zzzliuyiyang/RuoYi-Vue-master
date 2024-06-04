import request from '@/utils/request'

// 查询活动管理列表
export function listActivity(query) {
  return request({
    url: '/system/activity/list',
    method: 'get',
    params: query
  })
}

// //申请加入活动
// export function applyActivity(activityId,userId) {
//   return request({
//     url: '/system/activity/applyActivity',
//     method: 'post',
//   })
// }

// 新增申请管理
export function applyActivity(data) {
  return request({
    url: '/system/apply',
    method: 'post',
    data: data
  })
}

// 查询活动管理详细
export function getActivity(activityId) {
  return request({
    url: '/system/activity/' + activityId,
    method: 'get'
  })
}

// 新增活动管理
export function addActivity(data) {
  return request({
    url: '/system/activity',
    method: 'post',
    data: data
  })
}

// 修改活动管理
export function updateActivity(data) {
  return request({
    url: '/system/activity',
    method: 'put',
    data: data
  })
}

// 删除活动管理
export function delActivity(activityId) {
  return request({
    url: '/system/activity/' + activityId,
    method: 'delete'
  })
}
