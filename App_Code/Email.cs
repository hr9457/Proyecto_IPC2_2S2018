using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;

/// <summary>
/// Descripción breve de Email
/// </summary>
public class Email
{


    MailMessage mensaje = new MailMessage();
    SmtpClient smtp = new SmtpClient();

    public bool enviarCorreo(string from,string contrasenia,string correoElectronico,string cuerpo)
    {
        try
        {
            mensaje.From = new MailAddress(from);
            mensaje.To.Add(new MailAddress(correoElectronico));
            mensaje.Body = cuerpo;
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new NetworkCredential(from,contrasenia);
            smtp.EnableSsl = true;//protocolo e seguridad
            smtp.Send(mensaje);
            //mensaje.IsBodyHtml = true;
            return true;
        }
        catch (Exception ex)
        {
            return false;
        }
    }

    public Email()
    {

    }
}