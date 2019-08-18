<template>
  <div>
    
   <!-- Main content -->
    <section class="content">
      <!-- Main row -->
      <div class="row">

        <!-- right col (We are only adding the ID to make the widgets sortable)-->
        <section class="col-lg-7 connectedSortable">

          <!-- Map box -->
          <div class="box box-solid bg-light-blue-gradient">
            <div class="box-header">
              <!-- tools box -->
              <div class="pull-right box-tools">                
                <button type="button" class="btn btn-primary btn-sm pull-right" data-widget="collapse"
                        data-toggle="tooltip" title="Collapse" style="margin-right: 5px;">
                  <i class="fa fa-minus"></i></button>
              </div>
              <!-- /. tools -->

              <i class="fa fa-book" aria-hidden="true"></i>
              <h3 class="box-title">
                Collections
              </h3>
            </div>
            <div class="box-body">
                <div class="form-group col-sm-3">   
                    <label for="inputFullName" class="control-label">Select parameter</label>                            
                    <select v-model="searchi" id="searches" name="searches" class="form-control select2" style="width: 100%;">                      
                      <option v-for="search in searches" :value="search.id" v-bind:key="search.id">{{ search.name }}</option>
                  </select>                  
                </div>
                <div class="form-group col-sm-5">                               
                  <div v-if="searchi === '1'">
                    <label for="inputFullName" class="control-label">Daily</label>
                    <div style="margin-bottom: 10px;">
                      <div class="input-group date col-sm-6">
                        <div class="input-group-addon">
                          <i class="fa fa-calendar"></i>
                        </div>                              
                        <input id="dailyDate" class="form-control pull-right" type="date" :value="dailyDate && dailyDate.toISOString().split('T')[0]" @input="dailyDate = $event.target.valueAsDate">
                        <input v-model="dailyDate" type="hidden">
                        <!--{{dailyDate}}-->
                      </div>
                    </div>
                  </div>

                  <div v-if="searchi === '2'">
                    <label for="inputFullName" class="control-label">Monthly</label>
                    <div class="input-group date col-sm-6">
                      <vue-monthly-picker
                        v-model="selectedMonth"
                        placeHolder=" Select Month"
                      >
                      </vue-monthly-picker>
                    </div>
                  </div>

                  <div v-if="searchi === '3'">
                    <label for="inputFullName" class="control-label">Yearly</label>
                    <div class="input-group date col-sm-6">
                      <select id="dob" v-model="selectedYear">
                        <option value="0">Year:</option>
                        <option v-for="year in years" :value="year" :key="year">{{ year }}</option>                        
                      </select>                      
                    </div>
                  </div>
                                     
                </div>                
                <div class="form-group col-sm-2">
                    <label class="control-label">&nbsp;</label>
                    <div style="margin-bottom: 10px;">
                      <button @click="searchParameter()" type="submit" class="btn btn-info btn-block trans">Search</button>  
                    </div>                    
                </div>
                <div class="form-group col-sm-2">
                    <label class="control-label">&nbsp;</label>
                    <div style="margin-bottom: 10px;">
                      <button @click="clearForm()" type="submit" class="btn btn-success btn-block trans">Print</button>  
                    </div>                    
                </div>
                
                <table class="table">
                    <tr> 
                      <th width="2%">Acct#</th>                   
                      <th>Full Name</th>                                        
                      <th>Principal Amount</th>
                      <th>Interest Income</th>
                      <th>Release & Expenses</th>
                      <th>Collection</th>
                    </tr>   
                    <tr v-for="profile in profiles" v-bind:key="profile.id">  
                      <td>{{ profile.id }}</td>                      
                      <td>{{ profile.full_name }}</td>
                      <td>{{ profile.loan | currency('P') }}</td>
                      <td>{{ (( (profile.loan) + (profile.loan * (profile.interest/100) * profile.term)) )  - profile.loan | currency('P') }}</td>
                      <td></td>
                      <td></td>
                      <td></td>
                    <tr>
                    <tr><td></td><td></td><td></td></tr>
                    <tr style="background: #000; border: none">
                      <td><b>Total:</b></td>
                      <td><b></b></td>
                      <td><b>{{totalInterest | currency('P')}}</b></td>
                      <td><b>{{totalInterest | currency('P')}}</b></td>
                      <td></td>
                      <td></td>
                    </tr>                 
                </table>  
            </div>
            <!-- /.box-body-->
          </div>
          <!-- /.box -->

        </section>
        <!-- right col -->

        <!-- Left col -->
        <section class="col-lg-5 connectedSortable">         

          <!-- quick email widget -->
          <div class="box box-info">
            <div class="box-header">
              <i class="fa fa-keyboard-o" aria-hidden="true"></i>

              <h3 class="box-title">Add Expenses</h3>

            </div>
            <div class="box-body">
              <form action="#" method="post">
                <div class="form-group">
                  <input type="text" class="form-control" name="name" placeholder="name">
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="amount" placeholder="amount">
                </div>
                <div>
                <textarea class="textarea" placeholder="Description"
                  style="width: 100%; height: 65px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                </div>
              </form>
            </div>
            <div class="box-footer clearfix">
              <button type="button" class="pull-right btn btn-default" id="sendEmail">Add
                <i class="fa fa-arrow-circle-right"></i></button>
            </div>
          </div>

                    <!-- solid sales graph -->
          <div class="box box-solid bg-teal-gradient">
            <div class="box-header">
              <i class="fa fa-money" aria-hidden="true"></i>

              <h3 class="box-title">Expenses & Releases</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn bg-teal btn-sm" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn bg-teal btn-sm" data-widget="remove"><i class="fa fa-times"></i>
                </button>
              </div>
            </div>
            <div class="box-body border-radius-none">               
              <table class="table">
                  <tr>                    
                    <th>Name</th>                                                                                 
                    <th>Description</th>                     
                    <th>Amount</th>
                    <th>Date</th>
                  </tr>   
                  <tr>
                    <td>xxx</td>
                    <td>xxx</td>
                    <td>xxx</td>
                    <td>xxx</td>
                  </tr> 
                  <tr>
                    <td>Total</td>
                    <td></td>
                    <td>$$$</td>
                    <td>xxx</td>
                  </tr>                 
              </table>             
            </div>
            <!-- /.box-body -->

          </div>
          <!-- /.box -->

        </section> 
        <!-- /.Left col -->
        
      </div>
      <!-- /.row (main row) -->

    </section>
    <!-- /.content -->

  </div>

</template>

<script>

import Vue2Filters from 'vue2-filters'
import moment from 'moment'
import VueMonthlyPicker from 'vue-monthly-picker'
//import DateDropdown from 'vue-date-dropdown'

export default {
  components: {
		VueMonthlyPicker
	},
  data() {
    return {
      selectedMonth: '',      
      selectedYear: '',
      dailyDate: '',
      sparameter: '',
      searchi: '',       
      areas: [],
      area: {
          id: -1,
          area_code: '',
          address: '',
          collector: 'All',
          contact: ''            
      },   
      searches:[
        {id:'1', name:"Daily"}, 
        {id:'2', name:"Monthly"},
        {id:'3', name:"Yearly"}
      ],
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
        loan: '',
        interest: '',
        term: '',
        status: '',
        date_from: '',
        date_to: '',
        contact: '',
        /*result: '',
        icon: ''*/
      },
      profile_id: '',
      pagination: {},
      edit: false                 
    };
  },

  filters: {
    formatDate(value) {                
      return moment(String(value)).format('D MMM YYYY');      
    }
  },

  watch: {
    myDate() {      
      this.myDate2 = new Date(this.myDate.setDate(this.myDate.getDate() + this.profile.term * 30));
      this.myDate3 = new Date(this.myDate.setDate(this.myDate.getDate() - this.profile.term * 30));                
    }
  },

  created() {
    //this.fetchprofiles();
    this.fetchAreas();
  },

  computed: {     
      years: function () {
        const year = new Date().getFullYear()
        return Array.from({length: year - 1900}, (value, index) => 2018 + index)
      },   
      totalLoan: function () {
          var sum = 0;          
          this.profiles.forEach(e => {
              sum += e.loan;
          });
          return sum;
      },
      totalInterest: function () {
          var sum = 0;          
          this.profiles.forEach(e => {
              sum += (( (e.loan) + (e.loan * (e.interest/100) * e.term)) )  - e.loan;
          });
          return sum;
      }, 
      totalAmount: function () {
          var sum = 0;
          this.payments.forEach(e => {
              sum += e.pay;
          });
          return sum;
      },   
      paymentHref () {        
        return "/admin/" + this.area.id + "/" + this.area.collector;
      }
  },

  methods: {    
    /*dateToday: function() {
      var today = moment().valueOf();
      return moment(today).format('YYYY-MM-D');
    },*/
    checkDate(profile) {
      var date = moment(profile.date_to)
      var now = moment().valueOf();
      if (date > now) {
        this.profile.date_expire = true;     
        return true;   
      } else {
        this.profile.date_expire = false;        
        return false;
      }        
    },
    searchParameter(page_url) {
      switch (this.searchi) {  
        case '1': {
          //2019-01-04 00:00:00
          //this.sparameter = moment(String(this.dailyDate)).format('YYYY-MM-DD hh:mm:ss');          
          this.sparameter = moment(String(this.dailyDate)).format('YYYY-MM-DD');          
          break;
        }
        case '2': {
          this.sparameter = moment(String(this.selectedMonth)).format('YYYY-MM'); 
          break;
        }
        case '3': {
          this.sparameter = this.selectedYear;
          break;
        }
        default : {
          this.sparameter = "hola";
          break;
        }
      }
      /*console.log("searchi: " + this.searchi);
      console.log("daily: " + moment(String(this.dailyDate)).format('YYYY-MM-DD hh:mm:ss') );
      console.log("month: " + this.selectedMonth);
      console.log("year: " + this.selectedYear);*/
      console.log("selection: " + this.sparameter);      
      let vm = this;
      var searchID = this.searchi;
      var myparam = this.sparameter;
      var perpage = 25;                
      //page_url = page_url || 'http://afsi.com/api/searchparameter/${searchID}/${myparam}/${perpage}';
      fetch(`http://afsi.com/api/searchparameter/${searchID}/${myparam}/${perpage}`)
        .then(res => res.json())
        .then(res => {
          this.profiles = res.data;
          console.log("profiles: " + this.profiles);
          vm.makePagination(res.meta, res.links);
        })
        .catch(err => console.log(err));
      
    },
    fetchPaymentsByID(id) {    
        let vm = this;                        
        var perpage = 25;                
        fetch(`http://afsi.com/api/paymentsbyid/${id}/${perpage}`)
          .then(res => res.json())
          .then(res => {
            this.payments = res.data;
            console.log(this.payments);
            vm.makePagination(res.meta, res.links);
          })
          .catch(err => console.log(err));                  
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
        var id = this.area.id             
        var perpage = 25;        
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
      page_url = page_url || 'http://afsi.com/api/filteredrelease';
      fetch(page_url)
        .then(res => res.json())
        .then(res => {
          this.profiles = res.data;
          vm.makePagination(res.meta, res.links);
        })
        .catch(err => console.log(err));
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
    deleteprofile(id) {
      if (confirm('Are You Sure?')) {
        fetch(`http://afsi.com/api/profile/${id}`, {
          method: 'delete'
        })
          .then(res => res.json())
          .then(data => {
            alert('profile Removed');
            this.fetchprofiles();
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
      this.fetchPaymentsByID(profile.id);       
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
    }
    
  }
};
</script>
<style>
  .date-dropdown-select[data-v-67d74744] {
    color: #000;
    /*padding: 4px 8px;
    margin-right: 5px;
    font-size: 10pt;*/
  }
  button.trans {
    padding: 3px 5px;
  }
  .picker,
  .vue-monthly-picker .input {
    color: #000;
  }
  .vue-monthly-picker .input {
    height: auto !important;
    min-height: 2em !important;
    border-radius: 0 !important;
    padding: 4px !important;
    font-size: 10pt !important;
  }
  #dob {
    color: #000;
    height: auto !important;
    min-height: 2em !important;
    border-radius: 0 !important;
    padding: 4px !important;
    font-size: 10pt !important;
    width: 100%;
  }
</style>
