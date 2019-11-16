
import UIKit

final class GoalsCell: UITableViewCell {
    
    static let id = "GoalsCell"
    
    
    public let nameLabel = UILabel()
    public let balanceLabel = UILabel()
    
    public var imgView = UIImageView()
    
    var stackView: UIStackView!
    
    var subStackView: UIStackView!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        imgView.backgroundColor = .green
        imgView.layer.cornerRadius = 36
        imgView.layer.masksToBounds = true
        
        stackView = UIStackView(arrangedSubviews: [nameLabel, balanceLabel])
        stackView.axis = .vertical
        
        balanceLabel.textColor = .init(red: 0.0, green: 1.0, blue: 0.5, alpha: 1)
        
        imgView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        balanceLabel.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 8
        stackView.distribution = .fillEqually
        
        addSubview(imgView)
        addSubview(stackView)
        
        imgView.topAnchor.constraint(equalTo: topAnchor, constant: 14).isActive = true
        imgView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -14).isActive = true
        imgView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14).isActive = true
        imgView.widthAnchor.constraint(equalTo: imgView.heightAnchor, multiplier: 1).isActive = true
        
        
        
        stackView.topAnchor.constraint(equalTo: topAnchor, constant: 24).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -24).isActive = true
        stackView.leadingAnchor.constraint(equalTo: imgView.trailingAnchor, constant: 8).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8).isActive = true
        
        nameLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        balanceLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
//        self.isSelected = false
    }
    
    
    
}
