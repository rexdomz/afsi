<template>
  <div>
    
   <section class="content">
      <div class="row">
        <div class="col-md-12">
            <div class="box">
              <div class="box-header with-border">
                  <h3 class="box-title">Borrower's List</h3>          
              </div>                                      

              <div class="box-body">
                 
                <div class="col-md-3">
                  <div>                    
                    <select @change="fetchProfilesByAreas" v-model="area" id="area" name="area" class="area form-control select2">
                        <option value="0" selected="selected">Filter by Area</option>        
                        <option v-for="area in areas" :value="area.id" v-bind:key="area.id">{{ area.area_code }} - {{ area.address }}</option>
                    </select>
                  </div>
                </div>

                <div class="box-tools">
                    <ul class="pagination pagination-sm no-margin pull-right">
                        <li v-bind:class="[{disabled: !pagination.prev_page_url}]" class="page-item"><a class="page-link" href="#" @click="fetchprofiles(pagination.prev_page_url)">Previous</a></li>
                        <li class="page-item disabled"><a class="page-link text-dark" href="#">Page {{ pagination.current_page }} of {{ pagination.last_page }}</a></li>                    
                        <li v-bind:class="[{disabled: !pagination.next_page_url}]" class="page-item"><a class="page-link" href="#" @click="fetchprofiles(pagination.next_page_url)">Next</a></li>
                    </ul>
                </div>

               <table style="margin-top: 1.5em; float: left" class="table">
                    <tr>
                    <!--<th style="width: 100px">Record ID </th>-->
                    <th>Full Name</th>
                    <th>Address</th>
                    <th>Status</th>
                    <!--<th >Principal Loan</th>-->
                    <!--<th >Rate</th>-->
                    <!--<th >Interest</th>-->
                    <!--<th>Loan Amount</th>  
                    <th>Balance</th>-->                            
                    <!--<th>Rate/Day</th>-->                   
                    <!--<th >Term</th>
                    <th >Contact</th>-->                    
                    <th >Actions</th>   
                    <th ></th> 
                    </tr>
                    <tr v-for="profile in profiles" v-bind:key="profile.id">                        
                        <td>{{ profile.full_name }}</td>
                        <td>{{ profile.address }}</td>
                        <td><div v-html="getStat(profile.status)"></div></td>
                        <!--<td><span class="badge bg-green"> {{ profile.loan | currency('P') }} </span></td>-->
                        <!--<td>{{ profile.interest }}%</td> -->
                        <!--<td>{{ (profile.loan * (profile.interest/100) * profile.term) | currency('P') }}</td>-->                        
                        <!--<td><span class="badge bg-blue"> {{ ( (profile.loan) + (profile.loan * (profile.interest/100) * profile.term) ) | currency('P') }} </span></td>
                        <td><span class="badge bg-red">{{ ( ( (( (profile.loan) + (profile.loan * (profile.interest/100) * profile.term)) ) - totalAmount ) ) - profile.totalpay | currency('P') }}</span></td>-->
                        <!--<td>{{ ( ((profile.loan) + (profile.loan * (profile.interest/100) * profile.term)) / (profile.term * 30) ) | currency('P') }}</td>-->
                        <!--<td>{{ profile.term }} month(s)</td>
                        <td>{{ profile.contact }}</td>-->                        
                        <td><button @click="setProfile(profile)" type="button" class="btn btn-block btn-warning btn-xs">{{ getAction(profile.status) }}</button></td>
                        <td><button @click="editprofile(profile)" type="button" class="btn btn-block btn-info btn-xs" data-toggle="modal" data-target="#modal-info">Edit profile</button></td>
                        <td><button @click="editprofile(profile)" type="button" class="btn btn-block btn-success btn-xs" data-toggle="modal" data-target="#modal-info-2">Promisory</button></td>                                                               
                        <td><button @click="deleteProfile(profile.id)" type="button" class="btn btn-block btn-danger btn-xs">Remove</button></td>
                                                  
                    </tr>
                </table>
                </div>
                <!-- /.box-body -->
            </div>

            <!-- Promisory Note starts-->
            <div class="modal modal-info fade" id="modal-info-2">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                  <h4 class="modal-title">Promisory Note</h4>
                </div>
                <div class="modal-body" style="min-height: 700px;">
                  
                    <form @submit.prevent="addprofile" class="mb-4">
                        <div class="form-group">                               
                          <label for="inputFullName" class="col-sm-4 control-label">Full Name</label>
                          <div style="margin-bottom: 9px;" class="col-sm-8">
                              <input type="text" class="form-control" name="full_name" id="full_name" v-model="profile.full_name" placeholder="Lastname, Firstname  M.I. ...">
                          </div>
                        </div>  
                        <div class="form-group">                               
                          <label for="amountloan" class="col-sm-4 control-label">Loan Amount</label>
                          <div style="margin-bottom: 9px;" class="col-sm-8">  
                              <p class="form-control">{{ ( (profile.loan) + (profile.loan * (profile.interest/100) * profile.term) ) | currency('P') }} </p>                              
                          </div>
                        </div>   
                        <div class="form-group">                               
                          <label for="inputFullName" class="col-sm-4 control-label">Amount(in words)</label>
                          <div style="margin-bottom: 9px;" class="col-sm-8">
                              <input type="text" class="form-control" name="sum_in_words" id="sum_in_words" v-model="profile.sum_in_words" placeholder="">
                          </div>
                        </div>                      
                        <div class="form-group">                               
                          <label for="inputFullName" class="col-sm-4 control-label">Rate per Day</label>
                          <div style="margin-bottom: 9px;" class="col-sm-8">
                              <p class="form-control">{{ ( ((profile.loan) + (profile.loan * (profile.interest/100) * profile.term)) / (profile.term * 30) ) | currency('P') }}</p>
                          </div>
                        </div> 
                        <div class="form-group">                               
                          <label for="inputFullName" class="col-sm-4 control-label">Rate/Day(in words)</label>
                          <div style="margin-bottom: 9px;" class="col-sm-8">
                              <input type="text" class="form-control" name="dailyrate" id="per_day_in_words" v-model="profile.per_day_in_words" placeholder="">
                          </div>
                        </div> 
                        <!-- Editable -->  

                        <div class="form-group">                               
                          <label for="inputFullName" class="col-sm-4 control-label">Promisor cert_no</label>
                          <div style="margin-bottom: 9px;" class="col-sm-8">
                              <input type="text" class="form-control" name="promisor_certno" id="promisor_certno" v-model="profile.promisor_certno" placeholder="">
                          </div>
                        </div>                         
                        <div class="form-group">                               
                          <label for="inputFullName" class="col-sm-4 control-label">Promisor cert_issued_on</label>
                          <div style="margin-bottom: 9px;" class="col-sm-8">
                              <input type="text" class="form-control" name="promisor_cert_issued_on" id="promisor_cert_issued_on" v-model="profile.promisor_cert_issued_on" placeholder="">
                          </div>
                        </div> 
                        <div class="form-group">                               
                          <label for="inputFullName" class="col-sm-4 control-label">Promisor cert_issued_at</label>
                          <div style="margin-bottom: 9px;" class="col-sm-8">
                              <input type="text" class="form-control" name="promisor_cert_issued_at" id="promisor_cert_issued_at" v-model="profile.promisor_cert_issued_at" placeholder="">
                          </div>
                        </div> 
                        <div class="form-group">                               
                          <label for="inputFullName" class="col-sm-4 control-label">Comaker-1 Name</label>
                          <div style="margin-bottom: 9px;" class="col-sm-8">
                              <input type="text" class="form-control" name="comaker1_name" id="comaker1_name" v-model="profile.comaker1_name" placeholder="">
                          </div>
                        </div> 
                        <div class="form-group">                               
                          <label for="inputFullName" class="col-sm-4 control-label">Comaker-1 cert_no</label>
                          <div style="margin-bottom: 9px;" class="col-sm-8">
                              <input type="text" class="form-control" name="comaker1_certno" id="comaker1_certno" v-model="profile.comaker1_certno" placeholder="">
                          </div>
                        </div> 
                        <div class="form-group">                               
                          <label for="inputFullName" class="col-sm-4 control-label">Comaker-1 cert_issued_on</label>
                          <div style="margin-bottom: 9px;" class="col-sm-8">
                              <input type="text" class="form-control" name="comaker1_cert_issued_on" id="comaker1_cert_issued_on" v-model="profile.comaker1_cert_issued_on" placeholder="">
                          </div>
                        </div> 
                        <div class="form-group">                               
                          <label for="inputFullName" class="col-sm-4 control-label">Comaker-1 cert_issued_at</label>
                          <div style="margin-bottom: 9px;" class="col-sm-8">
                              <input type="text" class="form-control" name="comaker1_cert_issued_at" id="comaker1_cert_issued_at" v-model="profile.comaker1_cert_issued_at" placeholder="">
                          </div>
                        </div> 
                        <div class="form-group">                               
                          <label for="inputFullName" class="col-sm-4 control-label">Comaker-2 Name</label>
                          <div style="margin-bottom: 9px;" class="col-sm-8">
                              <input type="text" class="form-control" name="comaker2_name" id="comaker2_name" v-model="profile.comaker2_name" placeholder="">
                          </div>
                        </div> 
                        <div class="form-group">                               
                          <label for="inputFullName" class="col-sm-4 control-label">Comaker-2 cert_no</label>
                          <div style="margin-bottom: 9px;" class="col-sm-8">
                              <input type="text" class="form-control" name="comaker2_certno" id="comaker2_certno" v-model="profile.comaker2_certno" placeholder="">
                          </div>
                        </div> 
                        <div class="form-group">                               
                          <label for="inputFullName" class="col-sm-4 control-label">Comaker-2 cert_issued_on</label>
                          <div style="margin-bottom: 9px;" class="col-sm-8">
                              <input type="text" class="form-control" name="comaker2_cert_issued_on" id="comaker2_cert_issued_on" v-model="profile.comaker2_cert_issued_on" placeholder="">
                          </div>
                        </div> 
                        <div class="form-group">                               
                          <label for="inputFullName" class="col-sm-4 control-label">Comaker-2 cert_issued_at</label>
                          <div style="margin-bottom: 9px;" class="col-sm-8">
                              <input type="text" class="form-control" name="comaker2_cert_issued_at" id="comaker2_cert_issued_at" v-model="profile.comaker2_cert_issued_at" placeholder="">
                          </div>
                        </div> 
                        <!-- Editable -->

                        <div class="form-group">                               
                            <div class="col-sm-4">
                              <button style="margin-top: 15px;" type="submit" class="btn btn-primary btn-sm">Save Record</button>
                            </div>
                            <div class="col-sm-8">  
                              <a :href=paymentHref  style="margin-top: 15px;" class="btnPrint btn btn-block btn-success btn-sm">Print Promisorry Note</a>
                            </div>
                        </div>
                    </form> 
                  
                </div>
                <div class="modal-footer">
                  <button type="submit" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>                  
                </div>
              </div>
              <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
          </div>
          <!-- /.modal -->
          <!-- Promisory Note ends-->


            <!-- Edit Profile View starts-->
            <div class="modal modal-info fade" id="modal-info">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                  <h4 class="modal-title">Borrower's Profile</h4>
                </div>
                <div class="modal-body" style="min-height: 430px;">
                  
                    <form @submit.prevent="addprofile" class="mb-4">
                        <div class="form-group">                               
                        <label for="inputFullName" class="col-sm-3 control-label">Full Name</label>
                        <div style="margin-bottom: 10px;" class="col-sm-8">
                            <input type="text" class="form-control" name="full_name" id="full_name" v-model="profile.full_name" placeholder="Lastname, Firstname  M.I. ...">
                        </div>
                        </div>
                        <div class="form-group">                               
                        <label for="inputFullName" class="col-sm-3 control-label">Address</label>
                        <div style="margin-bottom: 10px;" class="col-sm-8">
                            <input type="text" class="form-control" id="address" v-model="profile.address" placeholder="Address ...">
                        </div>
                        </div>
                        <div class="form-group">                               
                        <label for="inputFullName" class="col-sm-3 control-label">Area</label>
                        <div style="margin-bottom: 10px;" class="col-sm-8">
                            <select v-model="profile.area" id="area" name="area" class="form-control select2">
                              <option value="0" selected="selected">Select Area ...</option>        
                              <option v-for="area in areas" :value="area.id" v-bind:key="area.id">{{ area.area_code }}, {{ area.address }}</option>
                          </select>
                        </div>
                        </div>

                        <div class="form-group">                               
                            <label for="inputFullName" class="col-sm-3 control-label">Loan Amount</label>
                            <div style="margin-bottom: 10px;" class="col-sm-8">                                
                                <input type="text" class="form-control" id="loan" v-model="profile.loan" placeholder="e,g 1000, 2000, 5000...">
                            </div>
                        </div>
                        <div class="form-group">                               
                            <label for="inputFullName" class="col-sm-3 control-label">Interest Rate</label>
                            <div style="margin-bottom: 10px;" class="col-sm-8">
                                <input type="text" class="form-control" id="interest" v-model="profile.interest" placeholder="eg 10, 20, 30...">
                            </div>
                        </div>
                        <div class="form-group">                               
                            <label for="inputFullName" class="col-sm-3 control-label">Term</label>
                            <div style="margin-bottom: 10px;" class="col-sm-8">
                            <select v-model="profile.term" id="term" name="term" class="form-control select2" style="width: 100%;">
                                <option value="0" selected="selected">Select Term ...</option>        
                                <option v-for="i in (1, 12)" :value=i :key="i" > {{ i }} Month(s) </option>
                            </select>                 
                            </div>
                        </div>

                        <div class="form-group">                               
                            <label for="inputFullName" class="col-sm-3 control-label">Date Start</label>
                            <div style="margin-bottom: 10px;" class="col-sm-8">
                              <div class="input-group date">
                                <div class="input-group-addon">
                                  <i class="fa fa-calendar"></i>
                                </div>                                                           
                                <input id="myDate" class="form-control pull-right" type="text" v-model="profile.date_from" placeholder="2019-04-01">                                 
                              </div>
                            </div>
                        </div>

                        <div class="form-group">                               
                            <label for="inputFullName" class="col-sm-3 control-label">Date End</label>
                            <div style="margin-bottom: 10px;" class="col-sm-8">
                              <div class="input-group date">
                                <div class="input-group-addon">
                                  <i class="fa fa-calendar"></i>
                                </div>
                                <input id="myDate" class="form-control pull-right" type="text" v-model="profile.date_to" placeholder="2019-04-01">                                 
                              </div>
                            </div>
                        </div>

                        <div class="form-group">                               
                            <label for="inputFullName" class="col-sm-3 control-label">Contact #</label>
                            <div style="margin-bottom: 10px;" class="col-sm-8">
                                <input type="text" class="form-control" id="contact" v-model="profile.contact" placeholder="Contact number (cp) ...">
                            </div>
                        </div>

                        <div class="form-group">                               
                            <div class="col-sm-3">
                              <button type="submit" class="btn btn-primary btn-sm">Update Record</button>
                            </div>
                        </div>
                    </form> 
                  
                </div>
                <div class="modal-footer">
                  <button type="submit" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>                  
                </div>
              </div>
              <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
          </div>
          <!-- /.modal -->
          <!-- Edit Profile View ends-->



            <!-- /.box-body -->
                <div class="box-footer">
                    Showing ({{ pagination.total }}) records...
                </div>
                <!-- /.box-footer-->
            <!-- /.box -->
            </div>  
      </div>    
      
    </section>

  </div>

</template>

<script>

import Vue2Filters from 'vue2-filters'
import moment from 'moment'
Vue.use(Vue2Filters)

export default {
  data() {
    return {
      myDate: null,  
      myDate2: null, 
      myDate3: null,      
      areas: [],
      area: {
          id: '',
          area_code: '',
          address: '',
          collector: '',
          contact: ''            
      },   
      payments: [],
      payment: {        
        id: '',
        profile_id: '',
        pay: '',
        date_pay: ''     
      },        
      pay_id: '',  
      profiles: [],      
      profile: {        
        id: '',
        full_name: '',
        address: '',
        area: '',
        status:'',
        loan: '',
        interest: '',
        term: '',
        status: '',
        date_from: '',
        date_to: '',
        contact: '',
        promisor_certno: '',
        promisor_cert_issued_on: '',
        promisor_cert_issued_at: '',
        comaker1_name: '',
        comaker1_certno: '',
        comaker1_cert_issued_on: '',
        comaker1_cert_issued_at: '',
        comaker2_name: '',
        comaker2_certno: '',
        comaker2_cert_issued_on: '',
        comaker2_cert_issued_at: '',
        sum_in_words: '',
        per_day_in_words: '',
        totalpay: '',
        acctset: ''
      },
      profile_id: '',
      pagination: {},
      edit: false
    };
  },

  watch: {
    myDate() {      
      this.myDate2 = new Date(this.myDate.setDate(this.myDate.getDate() + this.profile.term * 30));
      this.myDate3 = new Date(this.myDate.setDate(this.myDate.getDate() - this.profile.term * 30));          
      console.log('1st: '+ this.myDate3.toISOString().split('T')[0]);
      console.log('2nd: '+ this.myDate2.toISOString().split('T')[0]);
    }
  },

  created() {
    this.fetchprofiles();
    this.fetchAreas();
  },

  computed: {
      /*totalAmountDaily: function () {
          var sum = 0;
          this.profiles.forEach(e => {
              sum += ( ((e.loan) + (e.loan * (e.interest/100) * e.term)) / (e.term * 30) );
          });
          return sum
      },
      totalAmountWeekly: function () {
          var sum = 0;
          this.profiles.forEach(e => {
              sum += ( ((e.loan) + (e.loan * (e.interest/100) * e.term)) / (e.term * 30) * 7);
          });
          return sum
      },*/
      totalAmount: function (){
          var sum = 0;
          this.payments.forEach(e => {
              sum += e.pay;
          });
          return sum
      },
      paymentHref() {        
        return "promisory/" + this.profile.id;        
      }
  },

  methods: {                 
    addprofile() {
      //console.log(JSON.stringify(this.profile))
      if (this.edit === false) {
        fetch('http://afsi.com/api/profile', {
            method: 'post',
            body: JSON.stringify(this.profile),
            headers: {
              'content-type': 'application/json'
            }
          })
          .then(res => res.json())
          .then(data => {
            this.clearForm();
            alert('profile Added');
            this.fetchprofiles();
          })
          .catch(err => console.log(err));
      } else {       
        fetch('http://afsi.com/api/profiler', {
            method: 'put',
            body: JSON.stringify(this.profile),
            headers: {
              'content-type': 'application/json'
            }
          })
          .then(res => res.json())
          .then(data => {
            //this.clearForm();
            alert('Profile Updated');
            //this.fetchProfilesByAreas();
          })
          .catch(err => console.log(err));               
      }      
    },
    setProfile(profile) {      
      this.editprofile(profile);

      if (confirm('Are You Sure?')) {                    
        if (profile.status != 1) {
          this.profile.status = 1;
        } else {
          this.profile.status = 0;
        }
        console.log("this:"+ JSON.stringify(this.profile));
        fetch(`http://afsi.com/api/setaccount`, {
            method: 'put',
            body: JSON.stringify(this.profile),
            headers: {
              'content-type': 'application/json'
            }
          })
          .then(res => res.json())
          .then(data => {
            this.clearForm();
            alert('Account Set!');
            this.fetchProfilesByAreas();
          })
          .catch(err => console.log(err));  
      }
    },
    fetchAreas(page_url) {            
        page_url = 'http://afsi.com/api/areas';
        fetch(page_url)
            .then(res => res.json())
            .then(res => {
            this.areas = res.data;            
            })
            .catch(err => console.log(err));
    },
    fetchProfilesByAreas() {    
        let vm = this;                
        var id = this.area
        var perpage = 20;
        //console.log('Area:' + id)
        fetch(`http://afsi.com/api/profilesbyarea/${id}/${perpage}`)
          .then(res => res.json())
          .then(res => {
            this.profiles = res.data;            
            vm.makePagination(res.meta, res.links);
          })
          .catch(err => console.log(err));        
    },
    fetchprofiles(page_url) {
      let vm = this;
      page_url = page_url || 'http://afsi.com/api/profiles';
      fetch(page_url)
        .then(res => res.json())
        .then(res => {
          this.profiles = res.data;          
          vm.makePagination(res.meta, res.links);
        })
        .catch(err => console.log(err));
        //console.log("tanan:"+JSON.stringify(this.profile));
    },
    makePagination(meta, links) {
      let pagination = {
        current_page: meta.current_page,
        last_page: meta.last_page,
        next_page_url: links.next,
        prev_page_url: links.prev,
        per_page: meta.per_page,
        total: meta.total
      };
      this.pagination = pagination;
    },
    deleteProfile(id) {
      if (confirm('Are You Sure?')) {
        fetch(`http://afsi.com/api/profile/${id}`, {
          method: 'delete'
        })
          .then(res => res.json())
          .then(data => {
            alert('profile Removed');
            //this.fetchprofiles();
            this.fetchProfilesByAreas();
          })
          .catch(err => console.log(err));
      }
    },    
    editprofile(profile) {
      this.edit = true;
      this.profile.id = profile.id;
      this.profile.profile_id = profile.id;
      this.profile.full_name = profile.full_name;
      this.profile.address = profile.address;
      this.profile.area = profile.area;      
      this.profile.loan = profile.loan;
      this.profile.interest = profile.interest;
      this.profile.term = profile.term;
      this.profile.status = profile.status;
      this.profile.date_from = moment(String(profile.date_from)).format('YYYY-MM-DD'); 
      this.profile.date_to = moment(String(profile.date_to)).format('YYYY-MM-DD');
      this.profile.contact = profile.contact;      
      this.profile.promisor_certno = profile.promisor_certno;
      this.profile.promisor_cert_issued_on = profile.promisor_cert_issued_on;
      this.profile.promisor_cert_issued_at = profile.promisor_cert_issued_at;
      this.profile.comaker1_name = profile.comaker1_name;
      this.profile.comaker1_certno = profile.comaker1_certno;
      this.profile.comaker1_cert_issued_on = profile.comaker1_cert_issued_on;
      this.profile.comaker1_cert_issued_at = profile.comaker1_cert_issued_at;
      this.profile.comaker2_name = profile.comaker2_name;
      this.profile.comaker2_certno = profile.comaker2_certno;
      this.profile.comaker2_cert_issued_on = profile.comaker2_cert_issued_on;
      this.profile.comaker2_cert_issued_at = profile.comaker2_cert_issued_at;   
      this.profile.sum_in_words = profile.sum_in_words;            
      this.profile.per_day_in_words = profile.per_day_in_words;   
    },
    clearForm() {
      this.edit = false;
      this.profile.id = null;
      this.profile.profile_id = null;
      this.profile.full_name = '';
      this.profile.address = '';
      this.profile.area = '';
      this.profile.loan = '';
      this.profile.interest = '';
      this.profile.term = '';
      this.profile.status = '';
      this.profile.date_from = '';
      this.profile.date_to = '';
      this.profile.contact = ''; 
      this.promisor_certno = '';
      this.promisor_cert_issued_on = '';
      this.promisor_cert_issued_at = '';
      this.comaker1_name = '';
      this.comaker1_certno = '';
      this.comaker1_cert_issued_on = '';
      this.comaker1_cert_issued_at = '';
      this.comaker2_name = '';
      this.comaker2_certno = '';
      this.comaker2_cert_issued_on = '';
      this.comaker2_cert_issued_at = '';
      this.sum_in_words = '';
      this.per_day_in_words = '';
    },  
    get_amount_loan: function(profile) {      
      return profile.amountloan;
    },  
    getStat: function(status) {        
        switch (status) {
          case 0: {
            this.profile.result = "Inactive";
            this.profile.icon = "bg-yellow";
            break;
          }
          case 1: {
            this.profile.result = "Active";
            this.profile.icon = "bg-green";
            break;
          }
          case 2: {
            this.profile.result = "Suspended";
            this.profile.icon = "bg-red";
            break; 
          }     
          default: {
            this.profile.result = "holla";
            this.profile.icon = "";
            break;
          }          
        }
        var output = '<span class="badge '+ this.profile.icon + '">' + this.profile.result + '</span>';
        return output;
    },
    getAction: function(status) {
      var statmsg = "";
      switch (status) {
          case 0: {
            statmsg = "Activate";      
            this.acctset = true;      
            break;
          }
          case 1: {
            statmsg = "Deactivate";      
            this.acctset = false;      
            break;
          }
          case 2: {
            statmsg = "Activate";  
            this.acctset = true;          
            break; 
          }     
          default: {
            statmsg = "holla";   
            this.acctset = '';         
            break;
          }          
      }      

      return statmsg;
    }
     
  }
};
</script>
