namespace java thriftServer.fabricRpcService
// 包括更新服务的接口和查询服务的接口
service UpdateService {
    void createOpinionRecord(1:string uuid, 2:i64 id, 3:i64 department, 4:i64 name, 5:i64 object, 6:i64 type,
    7:string opinionTime, 8:string doneTime, 9:string extension1, 10:string extension2, 11:string extension3,
    12:string token)

    void createReviewRecord(1:string uuid, 2:i64 department, 3:i64 name, 4:i64 object, 5:i64 result, 6:string reviewTime,
    7:string extension1, 8:string extension2, 9:string extension3, 10:string token)

    void modifyOpinionRecord(1:string uuid, 2:string doneTime, 3:string token)

}

service QueryService {
    string queryWithQueryString(1:string queryString, 2:string token)

    string queryOpinion_ById(1:i64 dataId, 2:string token)
    string queryReview_ById(1:i64 opinionId, 2:string token)

    string queryOpinion_ByUser(1:i64 department, 2:i64 name, 3:string token)
    string queryReview_ByUser(1:i64 department,2:i64 name, 3:string token)
}