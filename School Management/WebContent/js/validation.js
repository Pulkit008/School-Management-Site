function namevalidation(idname, idmsg) {
    var n = document.getElementById(idname);
    var m = document.getElementById(idmsg);

    if (n.value.trim().length == 0) {
        m.innerHTML = "Invalid Name !";
        m.style.visibility = "visible";
        n.focus();
        redcolor(idname);
        return false;
    }
    else {
        m.innerHTML = "";
        m.style.visibility = "Hidden";
        greencolor(idname);
        return true;
    }
}
function emailvalidation(idname, idmsg) {
    var e = document.getElementById(idname);
    var m = document.getElementById(idmsg);

    var regem = /^([a-z 0-9\.-]+)@([a-z0-9-]+).([a-z]{2,8})(.[a-z]{2,8})$/;
    if (regem.test(e.value)) {
        m.innerHTML = "";
        m.style.visibility = "Hidden";
        greencolor(idname);
        return true;
    }
    else {
        m.innerHTML = "Invalid Email !";
        m.style.visibility = "visible";
        e.focus();
        redcolor(idname);
        return false;
    }
}
function marksvalidation(idname, idmsg) {
    var p = document.getElementById(idname);
    var m = document.getElementById(idmsg);

    if (p.value.length == 0 || p.value > 100 || p.value <0) {
        m.innerHTML = "Invalid !";
        m.style.visibility = "visible";
        p.focus();
        redcolor(idname);
        return false;
    }
    else {
        m.innerHTML = "";
        m.style.visibility = "Hidden";
        greencolor(idname);
        return true;
    }
}

function passwordvalidation(idname, idmsg) {
    var p = document.getElementById(idname);
    var m = document.getElementById(idmsg);

    if (p.value.length < 6) {
        m.innerHTML = "Enter atleast 6 characters !";
        m.style.visibility = "visible";
        p.focus();
        redcolor(idname);
        return false;
    }
    else if (p.length > 10) {
        m.innerHTML = "Maximum 10 Characters !";
        m.style.visibility = "visible";
        p.focus();
        redcolor(idname);
        return false;
    }
    else {
        m.innerHTML = "";
        m.style.visibility = "Hidden";
        greencolor(idname);
        return true;
    }
}
function cpasswordvalidation(idname, idname2, idmsg) {
    var p = document.getElementById(idname);
    var cp = document.getElementById(idname2);
    var m = document.getElementById(idmsg);

    if (p.value == cp.value) {
        m.innerHTML = "";
        m.style.visibility = "Hidden";
        greencolor(idname2);
        return true;
    } else {
        m.innerHTML = "Password Not Match !";
        m.style.visibility = "visible";
        cp.focus();
        redcolor(idname2);
        return false;
    }
}

function adminvalidate(ide, idmsg1, idp, idmsg2) {
    if (emailvalidation(ide, idmsg1)) {
        if (passwordvalidation(idp, idmsg2)) {
            return true;
        }
    }
    return false;
}

function adminregistervalidate(idaname, idmsg1, idname, idmsg2, idemail, idmsg3, idpass, idmsg4, idcpass, idmsg5){
	if (namevalidation(idaname, idmsg1)) {
		if (namevalidation(idname, idmsg2)) {
			if (emailvalidation(idemail, idmsg3)) {
				if (passwordvalidation(idpass, idmsg4)) {
					if (cpasswordvalidation(idpass, idcpass, idmsg5)) {
						return true;
					}
				}
			}
		}
	}
	return false;
}

function studentregistervalidate(idsname, idmsg2, ids1, idmsg3, ids2, idmsg4, ids3, idmsg5) {
        if (namevalidation(idsname, idmsg2)) {
            if (marksvalidation(ids1, idmsg3)) {
                if (marksvalidation(ids2, idmsg4)) {
                    if (marksvalidation(ids3, idmsg5)) {
                    	return true;
                    }
                }
            }
        }
    return false;
}

function greencolor(str) {
    document.getElementById(str).style = "border-bottom: 1px solid green !important;box-shadow: 0 1px 0 0 green !important;";
}
function redcolor(str) {
    document.getElementById(str).style = "border-bottom: 1px solid red !important;box-shadow: 0 1px 0 0 red !important;";
}