//
//  settingItem.swift
//  WiKiMUsic
//
//  Created by 周晨凯 on 2022/9/24.
//

import UIKit

class settingItem: UIView {

    init() {
        super .init(frame: .zero)
        innerInit()
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        innerInit()
    }
    
    func innerInit() {
        backgroundColor = .white
        addSubview(iconView)
        addSubview(titleView)
        addSubview(moreIconView)
    }
    ///当加入父视图时显示 进行内部约束
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        iconView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16)
            make.width.height.equalTo(20)
            make.centerY.equalToSuperview()
        }
        
        moreIconView.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-16)
            make.width.height.equalTo(20)
            make.centerY.equalToSuperview()
        }
        
        titleView.snp.makeConstraints { make in
            make.leading.equalTo(iconView.snp.trailing).offset(16)
            make.centerY.equalToSuperview()
        }
    }
    ///左侧图标
    lazy var iconView: UIImageView = {
        let r = UIImageView()
        r.image = UIImage(named: "Setting")
        return r
    }()
    ///标题
    lazy var titleView: UILabel = {
        let r = UILabel()
        r.text = "标题"
        return r
    }()
    ///右侧图标
    lazy var moreIconView: UIImageView = {
        let r = UIImageView()
        r.image = UIImage(named: "Arrow")
        return r
    }()
}
