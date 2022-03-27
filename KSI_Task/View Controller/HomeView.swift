//
//  HomeView.swift
//  KSI_Task
//
//  Created by Esraa on 27/03/2022.
//

import UIKit

class HomeView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    let navigationTitleLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 9, width: 60, height: 30)
        label.text = "مراسي"
        label.textColor = .white
        label.textAlignment = .center
        label.layer.borderWidth = 2.0
        label.layer.borderColor = UIColor.white.cgColor
        label.font = UIFont.cairoBlack(with: 13)
        return label
    }()



    func setupViews(){

    }
    

}
