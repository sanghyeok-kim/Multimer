//
//  UIPickerView+SetFixedLabels.swift
//  Multimer
//
//  Created by 김상혁 on 2022/11/03.
//

import UIKit

extension UIPickerView {
    func setFixedLabels(with texts: [String]) {
        let columCount = texts.count
        let fontSize = UIFont.labelFontSize
        
        let labels = (0..<columCount).map { index -> UILabel in
            let label = UILabel()
            label.text = texts[index]
            label.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
            label.sizeToFit()
            return label
        }
        
        let pickerWidth: CGFloat = self.frame.width - fontSize
        let labelY: CGFloat = (self.frame.size.height / 2) - (fontSize / 2)
        
        for (index, label) in labels.enumerated() {
            let labelX: CGFloat = (pickerWidth / CGFloat(columCount)) * CGFloat(index + 1) - fontSize
            label.frame.origin = CGPoint(x: labelX, y: labelY)
            self.addSubview(label)
        }
    }
}
