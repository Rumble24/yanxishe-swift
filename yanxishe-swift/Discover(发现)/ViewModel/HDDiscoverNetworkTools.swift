//
//  HDDiscoverNetworkTools.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/8.
//  Copyright © 2020 rumble. All rights reserved.
//

import Alamofire

protocol HDDiscoverNetworkProtocol {
    
    /// 获取首页轮播图
    static func getCourseLunboListWithSkuMode(skuMode:String, complete: @escaping (_ isSuccess:Bool, _ model:HDDiscoverLunBoModel) -> ())
    
    /// 获取首页数据
    static func getCourseMainHomeInfo(pageNo:Int64,complete: @escaping (_ isSuccess:Bool, _ model:HDDiscoverHomeInfoModel) -> ())
    
}

extension HDDiscoverNetworkProtocol {
    static func getCourseLunboListWithSkuMode(skuMode:String, complete: @escaping (_ isSuccess:Bool, _ model:HDDiscoverLunBoModel) -> ()) {
        
        let params = ["sku_mode": skuMode]
        
        AF.request(HDCourseLunBoApi, method: .get, parameters: params, encoder: URLEncodedFormParameterEncoder.default, headers: [], interceptor: nil).responseJSON { (response) in
            switch response.result {
            case .success :
                let json = String(data: response.data!, encoding: String.Encoding.utf8)
                complete(true, HDDiscoverLunBoModel.deserialize(from: json) ?? HDDiscoverLunBoModel())
                break
            case .failure :
                complete(false, HDDiscoverLunBoModel())
                break
            }
        }
    }
    
    
    static func getCourseMainHomeInfo(pageNo:Int64,complete: @escaping (_ isSuccess:Bool, _ model:HDDiscoverHomeInfoModel) -> ()) {
        AF.request(HDCourseMainApi, method: .get, parameters: ["page_no" : pageNo], encoder: URLEncodedFormParameterEncoder.default, headers: [], interceptor: nil).responseJSON { (response) in
            switch response.result {
            case .success :
                let json = String(data: response.data!, encoding: String.Encoding.utf8)
                complete(true, HDDiscoverHomeInfoModel.deserialize(from: json) ?? HDDiscoverHomeInfoModel())
                break
            case .failure :
                complete(false, HDDiscoverHomeInfoModel())
                break
            }
        }
    }
    
}

struct HDDiscoverNetworkTools:HDDiscoverNetworkProtocol {
    
}
