import flask

from flask_mail import Mail # type: ignore

from prog_code.util import session_util
from prog_code.util import file_util
from prog_code.util import mail_util
from prog_code.util import session_util

app = flask.Flask(__name__)
app.config.from_pyfile('flask_config.cfg')
app.config['UPLOAD_FOLDER'] = file_util.UPLOAD_FOLDER
if not app.config['NO_MAIL']:
    mail_util.init_mail(app)
elif app.config['DEBUG_PRINT_EMAIL']:
    mail_util.DEBUG_PRINT_EMAIL = True

from prog_code.controller import access_data_controllers
from prog_code.controller import account_controllers
from prog_code.controller import api_key_controllers
from prog_code.controller import edit_parent_controllers
from prog_code.controller import edit_user_controllers
from prog_code.controller import enter_data_controllers
from prog_code.controller import delete_data_controllers
from prog_code.controller import edit_consent_controllers
from prog_code.controller import format_controllers
from prog_code.controller import import_data_controllers

@app.route("/base")
def main():
    """Controller for the cdibase homepage.
    @return: Rendered version of the CdiBase homepage.
    @rtype: flask.Response
    """
    if session_util.is_logged_in():
        return flask.render_template(
            "home.html",
            cur_page="home",
            **session_util.get_standard_template_values()
        )
    else:
        return flask.render_template(
            "login_home.html",
            cur_page="home",
            **session_util.get_standard_template_values()
        )


@app.route("/base/toc")
def table_of_contents():
    """Controller for the table of gontents page.
    @return: Rendered version of the table of contents.
    @rtype: flask.Response
    """
    return flask.render_template(
        "table_of_contents.html",
        cur_page="toc",
        **session_util.get_standard_template_values()
    )


@app.route("/base/tos")
def terms_of_service():
    """Controller for the terms of service page page.
    @return: Rendered version of the terms of service.
    @rtype: flask.Response
    """
    return flask.render_template(
        "terms_of_service.html",
        cur_page="tos",
        **session_util.get_standard_template_values()
    )


def disable_email():
    mail_util.DEBUG_PRINT_EMAIL = False
    mail_util.disable_mail()