//
//  DynamicCollectionViewCell.swift
//  DynamicCollectionView
//
//  Created by Fady on 30/01/2023.
//

import UIKit

class DynamicCollectionViewCell: UICollectionViewCell {
    private let textLabel = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)

        textLabel.textAlignment = .center
        textLabel.numberOfLines = 0
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(textLabel)
        NSLayoutConstraint.activate([
            textLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            textLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            textLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            textLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension DynamicCollectionViewCell {
    func set(text: String) {
        textLabel.text = text
    }
}
