
import UIKit

final class GoalsCell: UITableViewCell {
    
    static let id = "GoalsCell"
    
    
    private let nameLabel = UILabel()
    private let planAmmountLabel = UILabel()
    
    private var imgView = UIImageView()
    private var vertStackView: UIStackView!
    private var subStackView: UIStackView!
    private var payButton: UIButton!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        imgView.backgroundColor = .green
        imgView.layer.cornerRadius = 32.4
        imgView.layer.masksToBounds = true
        imgView.contentMode = .scaleAspectFit
        
        nameLabel.font = UIFont.boldSystemFont(ofSize: 24)
        
        vertStackView = UIStackView(arrangedSubviews: [nameLabel, planAmmountLabel])
        vertStackView.axis = .vertical
        vertStackView.distribution = .equalSpacing
        
        payButton = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        payButton.addTarget(self, action: #selector(payTapped), for: .touchUpInside)
        
        imgView.translatesAutoresizingMaskIntoConstraints = false
        vertStackView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        planAmmountLabel.translatesAutoresizingMaskIntoConstraints = false
        payButton.translatesAutoresizingMaskIntoConstraints = false
        
        
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
    
    public func setupUI(with item: Goal){
        imgView.image = UIImage(named: item.image)
        nameLabel.text = item.name
        planAmmountLabel.text = "$" + String(item.planedAmmount)
        

        nameLabel.textColor = item.isPaid ? .pureGreen : .black
        planAmmountLabel.textColor = item.isPaid ? .pureGreen : .black
    }
    
    @objc func payTapped(){
        
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
