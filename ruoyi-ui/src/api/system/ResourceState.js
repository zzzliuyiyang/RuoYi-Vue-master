import request from '@/utils/request'

// 查询资源状态及预约时间列表
export function listResourceState(query) {
  return request({
    url: '/system/ResourceState/list',
    method: 'get',
    params: query
  })
}

// 查询资源状态及预约时间详细
export function getResourceState(id) {
  return request({
    url: '/system/ResourceState/' + id,
    method: 'get'
  })
}

// 新增资源状态及预约时间
export function addResourceState(data) {
  return request({
    url: '/system/ResourceState',
    method: 'post',
    data: data
  })
}

// 修改资源状态及预约时间
export function updateResourceState(data) {
  return request({
    url: '/system/ResourceState',
    method: 'put',
    data: data
  })
}

// 删除资源状态及预约时间
export function delResourceState(id) {
  return request({
    url: '/system/ResourceState/' + id,
    method: 'delete'
  })
}
