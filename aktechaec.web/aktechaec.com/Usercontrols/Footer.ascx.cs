using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using vpro.functions;
using Controller;
using System.IO;

namespace aktech.Usercontrols
{
    public partial class Footer : System.Web.UI.UserControl
    {
        #region Declare
        private Propertity per = new Propertity();
        private Function fun = new Function();
        private Config cf = new Config();
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            lblOnline.Text = string.Format("{0:#,#}", Utils.CIntDef(Application["Online"]));
            var _hit = cf.Config_meta();
            if (_hit.ToList().Count > 0)
            {
                int sum = Utils.CIntDef(_hit.ToList()[0].CONFIG_HITCOUNTER);
                lblSum.Text = string.Format("{0:#,#}", sum);
            }
            if (!IsPostBack)
            {
                Load_Menu1();
                Show_File_HTML("footer-vi.htm");
                load_Logo();
            }
        }

        #region LoadData
        protected void Load_Menu1()
        {
            try
            {
                Rpmenu_foot.DataSource = per.Loadmenu(-1, 1, 1, -1, 1);
                Rpmenu_foot.DataBind();
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
            }

        }
        protected IQueryable Load_Menu2(object cat_parent_id)
        {
            try
            {
                var list = per.Menu2(cat_parent_id);
                return list;
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
                return null;
            }

        }
        private void Show_File_HTML(string HtmlFile)
        {
            string pathFile;
            string strHTMLContent;
            pathFile = Server.MapPath("/Data/footer/" + HtmlFile);

            if ((File.Exists(pathFile)))
            {
                StreamReader objNewsReader;
                objNewsReader = new StreamReader(pathFile);
                strHTMLContent = objNewsReader.ReadToEnd();
                objNewsReader.Close();

                Literal1.Text = strHTMLContent;
            }
            else
                Literal1.Text = "";

        }
        protected void load_Logo()
        {
            var _logo = per.Load_logo_or_sologan("1", 1);
            if (_logo.ToList().Count > 0)
            {
                Rplogo.DataSource = _logo;
                Rplogo.DataBind();
            }
        }
        #endregion
        #region Function
        public string GetLink_Cat(object Cat_Url, object Cat_Seo_Url)
        {
            try
            {
                string temp = fun.Getlink_Cat(Cat_Url, Cat_Seo_Url);
                return temp;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public string Getlogo(object Banner_type, object banner_field, object Banner_ID, object Banner_Image)
        {
            return fun.GetLogo(Banner_type, banner_field, Banner_ID, Banner_Image);
        }
        #endregion
    }
}