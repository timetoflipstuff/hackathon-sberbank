import UIKit

final class LimitsHeader: UITableViewCell {
    
    static let id = "LimitsHeader"
    
    private let mainLabel: UILabel = {
        let label = UILabel()
        label.text = "Limits"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 36)
        label.textColor = .white
        return label
    }()
    
    public func setupUI(mainText: String?){
        mainLabel.text = mainText
    }

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .pureGreen        
        contentView.addSubview(mainLabel)
        
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.topAnchor.constraint(equalTo: topAnchor, constant: 14).isActive = true
        mainLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -14).isActive = true
        mainLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}
