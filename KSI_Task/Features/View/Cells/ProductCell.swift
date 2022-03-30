//
//  ProductCell.swift
//  KSI_Task
//
//  Created by Esraa on 28/03/2022.
//

import UIKit

class ProductCell: UICollectionViewCell {


    // MARK: - Cell Identifier

    static let ProductCellID = "ProductCellID"

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


        let addToBusketLabel: UILabel = {
            let label = UILabel()
            label.backgroundColor = .white
            label.layer.borderColor = UIColor(named: "orange_home")?.cgColor
            label.layer.borderWidth = 2.0
            label.font =  UIFont.cairoRegular(with: 13)
            label.text = "اضف الي السلة"
            label.textColor = UIColor(named: "orange_home")
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


    let discountView: UIView = {
        var view = UIView()
        view.contentMode = .scaleAspectFit
        return view
    }()

    let priceBeforeDiscountLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.font =  UIFont.cairoLight(with: 10)
        label.text = "24.0 ر.س"
        label.textColor = .black
        label.textAlignment = .right
        return label
    }()

    let discountLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.font =  UIFont.cairoLight(with: 10)
        label.text = "20.83% خصم"
        label.textColor = UIColor(named: "orange_home")
        label.textAlignment = .right
        return label
    }()


    let productNameLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.font =  UIFont.cairoRegular(with: 13)
        label.text = "Olivious"
        label.textColor = .black
        label.textAlignment = .right
        return label
    }()

    let productDescriptionLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.font =  UIFont.cairoRegular(with: 10)
        label.text = "Olivious صابونه 150 جم للعنايه بالبشره صابونه حليب الماعز"
        label.textColor = .black
        label.textAlignment = .right
        label.numberOfLines = 0
        return label
    }()

    let currentPriceLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.font =  UIFont.cairoBold(with: 10)
        label.text = "ر.س 29.0"
        label.textColor = .black
        label.textAlignment = .right
        return label
    }()


    let justArrivedLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .black
        label.font =  UIFont.cairoLight(with: 13)
        label.text = "وصل حالا"
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()


    func setBeforeDiscountPrice(price: String, currency: String){
        let priceStrikeThrough = price.strikeThrough()
        let currencyAttributedString  = NSMutableAttributedString(string: " " + currency)

        let combination = NSMutableAttributedString()

        combination.append(priceStrikeThrough)
        combination.append(currencyAttributedString)
        priceBeforeDiscountLabel.attributedText = combination

    }


        // MARK: - setup views properties

        func setupViews() {
            cellView.backgroundColor = .white
            contentView.addSubview(cellView)
            cellView.addSubview(productImageView)
            cellView.addSubview(addToBusketLabel)
            cellView.addSubview(productNameLabel)
            productImageView.addSubview(justArrivedLabel)

            justArrivedLabel.constrainHeight(constant: 20)
            justArrivedLabel.constrainWidth(constant: 60)
            justArrivedLabel.anchor(top:  productImageView.topAnchor,
                                    leading: nil,
                                    bottom: nil,
                                    trailing: productImageView.trailingAnchor,
                                    padding: .init(top: 0, left: 0, bottom: 0, right: 0))


            cellView.addSubview(discountView)
            discountView.addSubview(priceBeforeDiscountLabel)
            discountView.addSubview(discountLabel)


            cellView.addSubview(currentPriceLabel)
            cellView.addSubview(productDescriptionLabel)

            cellView.anchor(top: contentView.topAnchor, leading: contentView.leadingAnchor,
                            bottom: contentView.bottomAnchor, trailing: contentView.trailingAnchor,
                            padding: .init(top: 0, left: 0, bottom: 0, right: 0))

            productImageView.constrainHeight(constant: 80)
            productImageView.anchor(top: cellView.topAnchor,
                                    leading: cellView.leadingAnchor,
                                    bottom: nil, trailing: cellView.trailingAnchor,
                                    padding: .init(top: 0, left: 0, bottom: 0, right: 0))

            addToBusketLabel.constrainHeight(constant: 20)
            addToBusketLabel.anchor(top:  productImageView.bottomAnchor,
                                leading: cellView.leadingAnchor,
                                bottom: nil,
                                trailing: cellView.trailingAnchor,
                                padding: .init(top: 2, left: 40, bottom: 0, right: 40))

            productNameLabel.constrainHeight(constant: 20)
            productNameLabel.anchor(top:  addToBusketLabel.bottomAnchor,
                                leading: nil,
                                bottom: nil,
                                trailing: cellView.trailingAnchor,
                                padding: .init(top: 2, left: 0, bottom: 0, right: 10))

            discountView.constrainHeight(constant: 20)
            discountView.anchor(top:  productNameLabel.bottomAnchor,
                                leading: nil,
                                bottom: nil,
                                trailing: cellView.trailingAnchor,
                                padding: .init(top: 2, left: 0, bottom: 0, right: 10))

            priceBeforeDiscountLabel.constrainWidth(constant: 100)
            priceBeforeDiscountLabel.anchor(top: discountView.topAnchor,
                                leading: nil,
                                            bottom: discountView.bottomAnchor,
                                trailing: discountView.trailingAnchor,
                                padding: .init(top: 0, left: 0, bottom: 0, right: 0))


            discountLabel.constrainWidth(constant: 90)
            discountLabel.anchor(top: discountView.topAnchor,
                                 leading: nil,
                                 bottom: discountView.bottomAnchor,
                                 trailing: priceBeforeDiscountLabel.leadingAnchor,
                                 padding: .init(top: 0, left: 0, bottom: 0, right: 2))


            currentPriceLabel.constrainHeight(constant: 10)
            currentPriceLabel.anchor(top:  discountView.bottomAnchor,
                                leading: nil,
                                bottom: nil,
                                trailing: cellView.trailingAnchor,
                                padding: .init(top: 2, left: 0, bottom: 0, right: 10))



            productDescriptionLabel.anchor(top:  currentPriceLabel.bottomAnchor,
                                           leading: cellView.leadingAnchor,
                                           bottom: cellView.bottomAnchor,
                                           trailing: cellView.trailingAnchor,
                                           padding: .init(top: 0, left: 0, bottom: 0, right: 10))

        }



    }




