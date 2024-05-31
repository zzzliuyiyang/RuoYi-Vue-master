import request from '@/utils/request'

// 查询活动资源;活动资源列表
export function listResource(query) {
  return request({
    url: '/system/resource/list',
    method: 'get',
    params: query
  })
}

// 查询活动资源;活动资源详细
export function getResource(resourceId) {
  return request({
    url: '/system/resource/' + resourceId,
    method: 'get'
  })
}

// 新增活动资源;活动资源
export function addResource(data) {
  return request({
    url: '/system/resource',
    method: 'post',
    data: data
  })
}

// 修改活动资源;活动资源
export function updateResource(data) {
  return request({
    url: '/system/resource',
    method: 'put',
    data: data
  })
}

// 删除活动资源;活动资源
export function delResource(resourceId) {
  return request({
    url: '/system/resource/' + resourceId,
    method: 'delete'
  })
}
