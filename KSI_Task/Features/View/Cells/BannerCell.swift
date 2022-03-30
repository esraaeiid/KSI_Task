//
//  BannerCell.swift
//  KSI_Task
//
//  Created by Esraa on 30/03/2022.
//

import UIKit

class BannerCell: UICollectionViewCell {


    // MARK: - Cell Identifier

    static let BannerCellID = "BannerCellID"

        // MARK: - Initializer

        override init(frame: CGRect) {
            super.init(frame: frame)

            setupViews()
        }

        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)

        }


        // MARK: - Properties

        let cellView: UIView = {
            let view = UIView()
            view.contentMode = .scaleToFill
            view.clipsToBounds = true
            view.layer.masksToBounds = false
            return view
        }()


        let productLabel: UILabel = {
            let label = UILabel()
            label.backgroundColor = .clear
            label.font =  UIFont.cairoRegular(with: 13)
            label.text = "حلويات"
            label.textColor = .black
            label.textAlignment = .center
            return label
        }()







        // MARK: - setup views properties

        func setupViews() {
            contentView.addSubview(cellView)
            cellView.addSubview(productLabel)
            cellView.backgroundColor = .gray
            productLabel.backgroundColor = .green
            cellView.anchor(top: contentView.topAnchor, leading: contentView.leadingAnchor,
                            bottom: contentView.bottomAnchor, trailing: contentView.trailingAnchor,
                            padding: .init(top: 0, left: 0, bottom: 0, right: 0))



            productLabel.constrainHeight(constant: 20)
            productLabel.constrainWidth(constant: 40)
            productLabel.centerYInSuperview()
            productLabel.centerXInSuperview()

        }



    }
