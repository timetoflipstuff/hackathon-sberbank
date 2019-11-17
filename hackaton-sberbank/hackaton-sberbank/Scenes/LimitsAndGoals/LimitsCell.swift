
import UIKit

final class LimitsCell: UITableViewCell{
    
    static let id = "LimitsCell"
    
    private let nameLabel = UILabel()
    private let canSpendLabel = UILabel()
    private let alreadySpendLabel = UILabel()
    private var imgView = UIImageView()
    
    private var vertStackView: UIStackView!
    private var horisontalStackView: UIStackView!
    
    var subStackView: UIStackView!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        imgView.backgroundColor = .red
        imgView.layer.cornerRadius = 32.4
        imgView.layer.masksToBounds = true
        imgView.contentMode = .scaleAspectFit
        
        nameLabel.font = .systemFont(ofSize: 24)
        canSpendLabel.font = .systemFont(ofSize: 20)
        alreadySpendLabel.font = .systemFont(ofSize: 20)
        
        horisontalStackView = UIStackView(arrangedSubviews: [canSpendLabel, alreadySpendLabel])
        horisontalStackView.axis = .horizontal
        horisontalStackView.distribution = .fillEqually
        
        vertStackView = UIStackView(arrangedSubviews: [nameLabel, horisontalStackView])
        vertStackView.axis = .vertical
        vertStackView.distribution = .equalSpacing
        
        imgView.translatesAutoresizingMaskIntoConstraints = false
        vertStackView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        canSpendLabel.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(imgView)
        addSubview(vertStackView)
        
        imgView.topAnchor.constraint(equalTo: topAnchor, constant: 14).isActive = true
        imgView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -14).isActive = true
        imgView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14).isActive = true
        imgView.widthAnchor.constraint(equalTo: imgView.heightAnchor, multiplier: 1).isActive = true
        
        vertStackView.topAnchor.constraint(equalTo: topAnchor, constant: 18).isActive = true
        vertStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -18).isActive = true
        vertStackView.leadingAnchor.constraint(equalTo: imgView.trailingAnchor, constant: 8).isActive = true
        vertStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
    }
    
    public func setupUI(with item: LimitPosition){
        nameLabel.text = item.name
        canSpendLabel.text = "Max: $" + String(item.limit)
        alreadySpendLabel.text = "Spent: $" + String(item.spent)
        imgView.image = UIImage(named: item.image)
        if item.limit - item.spent < 0 {
            alreadySpendLabel.textColor = .red
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}


