//
//  OffersCell.swift
//  KSI_Task
//
//  Created by Esraa on 28/03/2022.
//

import UIKit

class OffersCell: UICollectionViewCell {


    // MARK: - Cell Identifier

    static let OffersCellID = "OffersCellID"

        // MARK: - Initializer

        override init(frame: CGRect) {
            super.init(frame: frame)

            setupViews()
        }

        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)

        }

        override func prepareForReuse() {
            super.prepareForReuse()
            productImageView.image = nil
        }


        // MARK: - Properties

        let cellView: UIView = {
            let view = UIView()
            view.backgroundColor = .white
            view.contentMode = .scaleToFill
            view.clipsToBounds = true
            view.layer.masksToBounds = false
            view.layer.applySketchShadow(color: .black, alpha: 0.05, x: 0, y: 0, blur: 10, spread: 0)
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



        let productImageView: UIImageView = {
            var imageView = UIImageView()
            imageView.frame = CGRect(x: 0, y: 0, width: 60, height: 80)
            imageView.image = UIImage(named: "test")
            imageView.contentMode = .scaleAspectFit
            return imageView
        }()




        // MARK: - setup views properties

        func setupViews() {
            contentView.addSubview(cellView)
            cellView.addSubview(productImageView)
            cellView.addSubview(productLabel)

            cellView.anchor(top: contentView.topAnchor, leading: contentView.leadingAnchor,
                            bottom: contentView.bottomAnchor, trailing: contentView.trailingAnchor,
                            padding: .init(top: 0, left: 0, bottom: 0, right: 0))

            productImageView.constrainHeight(constant: 70)
            productImageView.anchor(top: cellView.topAnchor,
                                    leading: cellView.leadingAnchor,
                                    bottom: nil, trailing: cellView.trailingAnchor,
                                    padding: .init(top: 0, left: 0, bottom: 0, right: 0))

            productLabel.constrainHeight(constant: 20)
            productLabel.anchor(top:  productImageView.bottomAnchor,
                                leading: cellView.leadingAnchor,
                                bottom: nil,
                                trailing: cellView.trailingAnchor,
                                padding: .init(top: 0, left: 0, bottom: 0, right: 0))

        }



    }




