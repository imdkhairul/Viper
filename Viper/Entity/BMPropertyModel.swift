//
//  BMPropertyModel.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/18/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

struct BMPropertyModelDictionaryKeys
{
    static let kid = "id"
    static let kFirstName = "first_name"
    static let kLastName = "last_name"
    static let kEmail = "email"
    static let kPhone = "phone"
    static let kcontact = "contact"
    static let kpurchase_type = "purchase_type"
    static let kprc_approved = "prc_approved"
    static let kcredit_score = "credit_score"
    static let kmax_price = "max_price"
    static let kproperty_type = "property_type"
    static let kbuyer_id = "buyer_id"
    static let kcountry = "country"
    static let kcity = "city"
    static let kstate = "state"
    static let kzipcode = "zipcode"
    static let kbedroom = "bedroom"
    static let kbasement = "basement"
    static let kgarage = "garage"
    static let kstyle = "style"
    static let kexterior = "exterior"
    static let kprice_min = "price_min"
    static let kprice_max = "price_max"
    static let kbathroom = "bathroom"
}

class BMPropertyModel: NSObject
{
    var id = ""
    var firstName = ""
    var lastName = ""
    var email = ""
    var phone = ""
    var contact = ""
    var purchase_type = ""
    var prc_approved = ""
    var credit_score = ""
    var max_price = ""
    var property_type = ""
    var buyer_id = ""
    var country = ""
    var city = ""
    var state = ""
    var zipcode = ""
    var bedroom = ""
    var basement = ""
    var garage = ""
    var style = ""
    var exterior = ""
    var price_min = ""
    var price_max = ""
    var bathroom = ""
    
    convenience init(dictionary:[String:Any])
    {
        self.init()
        if let id = dictionary[BMPropertyModelDictionaryKeys.kid] as? String
        {
            self.id = id
        }
        if let firstname = dictionary[BMPropertyModelDictionaryKeys.kFirstName] as? String
        {
            self.firstName = firstname
        }
        if let lastname = dictionary[BMPropertyModelDictionaryKeys.kLastName] as? String
        {
            self.lastName = lastname
        }
        if let email = dictionary[BMPropertyModelDictionaryKeys.kEmail] as? String
        {
            self.email = email
        }
        if let phone = dictionary[BMPropertyModelDictionaryKeys.kPhone] as? String
        {
            self.phone = phone
        }
        if let contact = dictionary[BMPropertyModelDictionaryKeys.kcontact] as? String
        {
            self.contact = contact
        }
        if let purchasetype = dictionary[BMPropertyModelDictionaryKeys.kpurchase_type] as? String
        {
            self.purchase_type = purchasetype
        }
        if let prcapproved = dictionary[BMPropertyModelDictionaryKeys.kprc_approved] as? String
        {
            self.prc_approved = prcapproved
        }
        if let creditscore = dictionary[BMPropertyModelDictionaryKeys.kcredit_score] as? String
        {
            self.credit_score = creditscore
        }
        if let maxprice = dictionary[BMPropertyModelDictionaryKeys.kmax_price] as? String
        {
            self.max_price = maxprice
        }
        if let propertytype = dictionary[BMPropertyModelDictionaryKeys.kproperty_type] as? String
        {
            self.property_type = propertytype
        }
        if let buyerid = dictionary[BMPropertyModelDictionaryKeys.kbuyer_id] as? String
        {
            self.buyer_id = buyerid
        }
        if let country = dictionary[BMPropertyModelDictionaryKeys.kcountry] as? String
        {
            self.country = country
        }
        if let city = dictionary[BMPropertyModelDictionaryKeys.kcity] as? String
        {
            self.city = city
        }
        if let state = dictionary[BMPropertyModelDictionaryKeys.kstate] as? String
        {
            self.state = state
        }
        if let zipcode = dictionary[BMPropertyModelDictionaryKeys.kzipcode] as? String
        {
            self.zipcode = zipcode
        }
        if let bedroom = dictionary[BMPropertyModelDictionaryKeys.kbedroom] as? String
        {
            self.bedroom = bedroom
        }
        if let basement = dictionary[BMPropertyModelDictionaryKeys.kbasement] as? String
        {
            self.basement = basement
        }
        if let garage = dictionary[BMPropertyModelDictionaryKeys.kgarage] as? String
        {
            self.garage = garage
        }
        if let style = dictionary[BMPropertyModelDictionaryKeys.kstyle] as? String
        {
            self.style = style
        }
        if let exterior = dictionary[BMPropertyModelDictionaryKeys.kexterior] as? String
        {
            self.exterior = exterior
        }
        if let pricemin = dictionary[BMPropertyModelDictionaryKeys.kprice_min] as? String
        {
            self.price_min = pricemin
        }
        if let pricemax = dictionary[BMPropertyModelDictionaryKeys.kprice_max] as? String
        {
            self.price_max = pricemax
        }
        if let bathroom = dictionary[BMPropertyModelDictionaryKeys.kbathroom] as? String
        {
            self.bathroom = bathroom
        }
    }
    
}
