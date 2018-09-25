using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections.Specialized;
using System.Text.RegularExpressions;

namespace JBC_PMIS_Government.Global
{
    class CreditCard
    {
        public const String AMEXPattern = @"^3[47][0-9]{13}$";
        public const String MasterCardPattern = @"^5[1-5][0-9]{14}$";
        public const String VisaCardPattern = @"^4[0-9]{12}(?:[0-9]{3})?$";
        public const String DinersClubCardPattern = @"^3(?:0[0-5]|[68][0-9])[0-9]{11}$";
        public const String JCBCardPattern = @"^(?:2131|1800|35\d{3})\d{11}$";

        protected NameValueCollection _patterns;
        public NameValueCollection CardPatterns
        {
            get
            {
                if (this._patterns == null)
                {
                    this._patterns = new NameValueCollection();
                    this._patterns.Add("American Express", AMEXPattern);
                    this._patterns.Add("Master Card", MasterCardPattern);
                    this._patterns.Add("Visa", VisaCardPattern);
                    this._patterns.Add("Diners", DinersClubCardPattern);
                    this._patterns.Add("JCB", JCBCardPattern);
                }
                return this._patterns;
            }
            set
            {
                this._patterns = value;
            }
        }

        public CreditCard()
        {
        }

        public String GetCardType(String cardNumber)
        {

            String cardType = "Other Card";

            try
            {
                String cardNum = cardNumber.Replace(" ", "").Replace("-", "");
                Regex regex;
                foreach (String cardTypeName in this.CardPatterns.Keys)
                {
                    regex = new Regex(this.CardPatterns[cardTypeName]);
                    if (regex.IsMatch(cardNum))
                    {
                        cardType = cardTypeName;
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.Close);
                mb.ShowDialog();
            }
            return cardType;
        }
    }
}
