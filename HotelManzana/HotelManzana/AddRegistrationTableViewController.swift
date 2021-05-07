//
//  AddRegistrationTableViewController.swift
//  HotelManzana
//
//  Created by Diego Araujo Lazanha on 18/03/21.
//

import UIKit

class AddRegistrationTableViewController: UITableViewController {
    
    
    
    
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    
        @IBOutlet var checkInDateLabel: UILabel!
        @IBOutlet var checkInDatePicker: UIDatePicker!
        @IBOutlet var checkOutDateLabel: UILabel!
        @IBOutlet var checkOutDatePicker: UIDatePicker!
      
    @IBAction func doneBarButtonTapped(_ sender: UIBarButtonItem) {
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let email = emailTextField.text ?? ""
        let checkInDate = checkInDatePicker.date
        let checkOutDate = checkOutDatePicker.date
        let numberOfAdults = Int(numberOfAdultsStepper.value)
        let numberOfChildren = Int(numberOfChildrenStepper.value)
        let hasWifi = wifiSwitch.isOn
        
        print("DONE TAPPED")
        print("firstName: \(firstName)")
        print("lastName: \(lastName)")
        print("email: \(email)")
        print("checkIn: \(checkInDate)")
        print("checkOut: \(checkOutDate)")
        print("numberOfAdults: \(numberOfAdults)")
        print("numberOfChildren: \(numberOfChildren)")
        print("wifi: \(hasWifi)")
    }
    
    @IBOutlet var numberOfAdultsLabel: UILabel!
    @IBOutlet var numberOfAdultsStepper: UIStepper!
    @IBOutlet var numberOfChildrenLabel: UILabel!
    @IBOutlet var numberOfChildrenStepper: UIStepper!
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        updateNumberOfGuests()
    }
    
    
    @IBAction func datePickerValueChanged(_ sender: UIDatePicker) {
        updateDateViews()
    }
    
    @IBOutlet var wifiSwitch: UISwitch!
    
    @IBAction func wifiSwitchChanged(_ sender: UISwitch) {
        
    }
    // para formatar a data
    var dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
    
        return dateFormatter
    }()
    let checkInDateLabelCellIndexPath = IndexPath(row: 0, section: 1)
    let checkInDatePickerCellIndexPath = IndexPath(row: 1, section: 1)
    
    let checkOutDateLabelCellIndexPath = IndexPath(row: 2, section: 1)
    let checkOutDatePickerCellIndexPath = IndexPath(row: 3, section: 1)
    
    var isCheckInDatePickerVisible: Bool = false {
        didSet {
            checkInDatePicker.isHidden = !isCheckInDatePickerVisible
        }
    }
    
    var isCheckOutDatePickerVisible: Bool = false {
        didSet {
            checkOutDatePicker.isHidden = !isCheckOutDatePickerVisible
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
       
        // define limites no date picker
        let midnightToday = Calendar.current.startOfDay(for: Date())
        checkInDatePicker.minimumDate = midnightToday
        checkInDatePicker.date = midnightToday

        // at the top of updateDateViews()
        checkOutDatePicker.minimumDate = Calendar.current.date(byAdding:
           .day, value: 1, to: checkInDatePicker.date)
        
        // atualiza controles na tela
        updateDateViews()
        updateNumberOfGuests()
    }

    // MARK: - Minhas funções
    
    func updateDateViews() {
        // at the top of updateDateViews()
        checkOutDatePicker.minimumDate = Calendar.current.date(byAdding:
           .day, value: 1, to: checkInDatePicker.date)
        
        // atualiza labels com as datas dos pickers
        checkInDateLabel.text = dateFormatter.string(from:
           checkInDatePicker.date)
        checkOutDateLabel.text = dateFormatter.string(from:
           checkOutDatePicker.date)
    }
    // MARK: - delegate
    
    
    // esconde ao data picker
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath {
        case checkInDatePickerCellIndexPath where
           isCheckInDatePickerVisible == false:
            return 0
        case checkOutDatePickerCellIndexPath where
           isCheckOutDatePickerVisible == false:
            return 0
        default:
            return UITableView.automaticDimension
        }
    }
    // esconde o data picker da table view e retorna ao clicar
    
    override func tableView(_ tableView: UITableView,
       didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        roomType = RoomType.all[indexPath.row]
        tableView.reloadData()
    }
    if roomTipe == self.roomType {
    cell.acessoryType = .checkmark
    } else {
    cell.acessoryType = .none
    }
    
        if indexPath == checkInDatePickerCellIndexPath && isCheckOutDatePickerVisible == false {
        //rótulo de check-in selecionado, seletor de check-out não está visível, alternar seletor de check-in
            isCheckInDatePickerVisible.toggle()
        } else if indexPath == checkOutDatePickerCellIndexPath && isCheckInDatePickerVisible == false {
//rótulo de check-out selecionado, seletor de check-in não está visível, alternar seletor de check-out
            isCheckOutDatePickerVisible.toggle()
        } else if indexPath == checkInDateLabelCellIndexPath || indexPath == checkOutDateLabelCellIndexPath {
            // qualquer rótulo foi selecionado, as condições anteriores falharam, o que significa que pelo menos um seletor está visível, alterne ambos

            isCheckInDatePickerVisible.toggle()
            isCheckOutDatePickerVisible.toggle()
        } else {
            return
        }
        tableView.beginUpdates()
        tableView.endUpdates()
    }
    
    //MARK: - func da terceira
    
    func updateNumberOfGuests() {
        numberOfAdultsLabel.text =
           "\(Int(numberOfAdultsStepper.value))"
        numberOfChildrenLabel.text =
           "\(Int(numberOfChildrenStepper.value))"
    }
}
