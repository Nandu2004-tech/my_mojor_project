from ast import Return
from itertools import count
# from ssl import _PasswordType
from django.db.models import Avg,Max,Min,Sum,Count,StdDev,Variance
from django.shortcuts import render,redirect
from django.contrib import messages
from adminapp.models import *
from userapp.blockchainAlgo import *


# Create your views here.
# def home_user_login(request):
#     print('fun called ds sdfcsd')
#     print('hello')
#     print('sssssss')
    
#     return render(request,'home/home-user-login.html')


def user_index(request):
    ps_count = PoliceStationModel.objects.all().count()
    po_count = PoliceOfficerModel.objects.all().count()
    cl_count = CriminalModel.objects.all().count()
    cs_count = CrimeModel.objects.all().count()


    return render(request,"user/user-index.html",{'x':ps_count,'y':po_count,'z':cl_count,'a':cs_count})

def home_user_login(request):
    if request.method == "POST":
        username=request.POST.get("username")
        password=request.POST.get("password")
        print(username)
        print(password)
        
        try:
            auth=PoliceOfficerModel.objects.get(officer_email=username,officer_password=password)
            request.session['officer_id'] = auth.id
            messages.success(request,'Successfully Logged In')
            return redirect('user_index')
        except:
            messages.error(request,'invalid login credentials')
            return redirect('home_user_login')
    return render(request,'home/home-user-login.html')


def user_my_profile(request):
    user_id=request.session['officer_id']
    user=PoliceOfficerModel.objects.get(id=user_id)


    return render(request,"user/user-my-profile.html",{'user':user})

def user_search_criminal(request):
    if request.method == "POST":
        search=request.POST.get("search")
        
        try:
            c2=CriminalModel.objects.get(criminal_aadhar=search)
            c1=CrimeModel.objects.filter(crime_aadhar=search)
        except:
            messages.error(request, 'No Resultl Found')
            return redirect('user_search_criminal')
        return render(request,"user/user-search-criminal.html",{'y':c2,'x':c1})
    return render(request,"user/user-search-criminal.html")


def criminal_validate(request,id):
    
    c2=CriminalModel.objects.get(pk=id)
    
    c1=CrimeModel.objects.filter(crime_aadhar=c2.criminal_aadhar)
    


    key = "ndkh8syefuh983y4rjd38weuhw"
    #creating initial block
    block1 = CriminalBlock(key,c2.criminal_aadhar)
    
    b1 = block1.block_hash
    

    block2 = CriminalBlock(block1.block_hash,c2.criminal_name)
    
    b2 = block2.block_hash
    

    block3 = CriminalBlock(block2.block_hash,c2.criminal_email)
    
    b3 = block3.block_hash
    

    block4 = CriminalBlock(block3.block_hash,c2.criminal_contact)
    
    b4 = block4.block_hash
    

    block5 = CriminalBlock(block4.block_hash,c2.criminal_city)
    
    b5 = block5.block_hash
    

    block6 = CriminalBlock(block5.block_hash,str(c2.criminal_profile))
    
    b6 = block6.block_hash
    

    block7 = CriminalBlock(block6.block_hash,str(c2.criminal_crime_date))
    
    b7 = block7.block_hash
    
    
    for i in c1:
        crime1 = CriminalBlock(key,i.crime_aadhar)
        
        cr1 = crime1.block_hash
        

        crime2 = CriminalBlock(crime1.block_hash,i.crime_type)
        
        cr2 = crime2.block_hash
        
        
        crime3 = CriminalBlock(crime2.block_hash,i.crime_desc)
        
        cr3 = crime3.block_hash
        
        
        crime4 = CriminalBlock(crime3.block_hash,str(i.crime_added_date))
        
        cr4 = crime4.block_hash
        

    if b1 == c2.aadhar_block and b2 == c2.name_block and b3 == c2.email_block and b4 == c2.contact_block and b5 == c2.city_block and b6 == c2.profile_block and b7 == c2.date_block and cr1 == i.aadhar_blk and cr2 == i.type_blk and cr3 == i.desc_blk and cr4 == i.date_blk:
       
        valid = 'valid'
        # hash_val = [b1,b2,b3,c2.contact_block,c2.city_block,c2.profile_block,c2.date_block,i.aadhar_blk,i.type_blk,i.desc_blk,i.date_blk]
    else:
        
        valid = 'invalid'

        # hash_val = [b2,{'name':b2},c2.email_block,c2.contact_block,c2.city_block,c2.profile_block,c2.date_block,i.aadhar_blk,i.type_blk,i.desc_blk,i.date_blk]
    

    
    c1.a = c2.aadhar_block
    c1.b = c2.name_block
    c1.c = c2.email_block
    c1.d = c2.contact_block
    c1.e = c2.city_block
    c1.f = c2.profile_block
    c1.g = i.aadhar_blk
    c1.h = i.type_blk
    c1.i = i.desc_blk
    c1.j = i.date_blk

    return render(request,"user/user-search-criminal.html",{'y':c2,'x':c1,'val':valid})