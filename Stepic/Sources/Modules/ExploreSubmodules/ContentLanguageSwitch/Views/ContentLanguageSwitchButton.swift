import UIKit

final class ContentLanguageSwitchButton: BounceButton {
    enum Appearance {
        static let selectedBackgroundColor = UIColor.stepikAccent
        static let unselectedBackgroundColor = UIColor.stepikAccentAlpha06

        static let selectedTextColor = UIColor.white
        static let unselectedTextColor = UIColor.stepikPrimaryText

        static let font = UIFont.systemFont(ofSize: 16, weight: .light)
    }

    override var isSelected: Bool {
        didSet {
            if self.isSelected {
                self.setSelectedState()
            } else {
                self.setUnselectedState()
            }
        }
    }

    private func setSelectedState() {
        self.backgroundColor = Appearance.selectedBackgroundColor
        self.titleLabel?.font = Appearance.font
        self.setTitleColor(Appearance.selectedTextColor, for: .selected)
    }

    private func setUnselectedState() {
        self.backgroundColor = Appearance.unselectedBackgroundColor
        self.titleLabel?.font = Appearance.font
        self.setTitleColor(Appearance.unselectedTextColor, for: .normal)
    }
}
