<template>
  <div>
    
   <section class="content">
      <div class="row">
        <div class="col-md-12">
            <div class="box">
              <div class="box-header">
                  <h3 class="box-title">Colection Form</h3>          
              </div>                                      
              <div class="box-body"> 

                <div class="col-md-5">
                    
                    <div class="box">
                        <div class="box-header">                            
                          <div>
                            <p>Filter:</p>
                            <select @change="fetchProfilesByType()" v-model="areaSelect" id="area" name="area" class="form-control select2" style="height: 25px !important; width: 60%; margin: 0 0 5px 0; float:left">                                                                     
                                <option v-for="area in areas" 
                                  :selected="area == areaSelect ? 'selected' : ''"
                                  :value="area.id" 
                                  v-bind:key="area.id">
                                  {{ area.area_code }} - {{ area.address }}
                                </option>
                            </select>
                            <select @change="fetchProfilesByType()" class="form-control select2" name="template" v-model="category" style="height: 25px !important; width: 60%; margin: 0 0 5px 0; float:left">
                                <option v-for="template in templates"
                                    :selected="template.id == category ? 'selected' : ''"
                                    :value="template.id"
                                    v-bind:key="template.id">
                                    {{ template.name }}
                                </option>
                            </select>                           
                            
                            <!--<p><span style="width: 150px;float: left;"> Total Customers: </span> {{ pagination.total }}<br>
                            <span style="width: 150px;float: left;"> Area Collector: </span> {{ area.collector }}<br>
                            <span style="width: 150px;float: left;"> Assistant Collector: </span> {{ area.assistant_collector }}</p>-->
                          </div>
                            <!--<i>Note: Total number of lenders per page is 25.</i><br>-->                            
                        </div>
                        <div class="box-body">                                
                            <a :href=paymentHref class="btnPrint btn btn-block btn-info btn-xs">Print</a>                                
                        </div>
                    </div> <!-- /box -->
                    <div class="box-tools">
                        <ul class="pagination pagination-sm no-margin pull-right">
                            <li v-bind:class="[{disabled: !pagination.prev_page_url}]" class="page-item"><a class="page-link" href="#" @click="fetchprofiles(pagination.prev_page_url)">Previous</a></li>
                            <li class="page-item disabled"><a class="page-link text-dark" href="#">Page {{ pagination.current_page }} of {{ pagination.last_page }}</a></li>                    
                            <li v-bind:class="[{disabled: !pagination.next_page_url}]" class="page-item"><a class="page-link" href="#" @click="fetchprofiles(pagination.next_page_url)">Next</a></li>
                        </ul>
                    </div>                      
                    <table style="margin-top: 1.5em; float: left" class="table">
                        <tr>                    
                          <th>Full Name</th>                    
                          <th>Maturity Date</th>
                          <th>Status</th>                            
                        </tr>
                        <tr v-for="profile in profiles" v-bind:key="profile.id">                        
                            <td>{{ profile.full_name }}</td> 
                            <td><span v-bind:style=" checkDate(profile) ? 'color: #000;' : 'color: red;' " >{{ profile.date_to | formatDate }}</span></td>                                                      
                            <td><div v-html="getStat(profile.status)"></div></td>
                        </tr>                            
                    </table>   
                </div>

                  <div class="col-md-6">  
                                                                               
                </div>
                
            </div>
          </div>
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
export default {
  data() {
    return {
      myDate: null,  
      myDate2: null, 
      myDate3: null,      
      areas: [],
      area: {
          id: -1,
          area_code: '',
          address: '',
          collector: 'All',
          contact: ''            
      }, 
      areaSelect: 1,  
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
        result: '',
        icon: ''
      },
      profile_id: '',
      pagination: {},
      edit: false, 
      templates: [
        {id: 1, name:'All Accounts'},
        {id: 2, name:'Active Accounts'},
        {id: 3, name:'Bad Accounts'}
      ],
      category: 1
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
      console.log('1st: '+ this.myDate3.toISOString().split('T')[0]);
      console.log('2nd: '+ this.myDate2.toISOString().split('T')[0]);
    }
  },

  created() {
    //this.fetchprofiles();
    this.fetchProfilesByType();
    this.fetchAreas();
  },

  computed: {      
      paymentHref () {        
        return "/admin/cash-card/" + this.areaSelect + "/" + this.category;
      }
  },

  methods: {    
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
    fetchPaymentsByID(id) {    
        let vm = this;                        
        var perpage = 20;                
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
        var id = this.areaSelect;             
        var perpage = 25;        
        fetch(`http://afsi.com/api/profilesbyarea/${id}/${perpage}`)
          .then(res => res.json())
          .then(res => {
            this.profiles = res.data;
            vm.makePagination(res.meta, res.links);
          })
          .catch(err => console.log(err));           
    },
    fetchProfilesByType() {
        let vm = this;                
        var id = this.areaSelect;  
        var status = this.category;           
        var perpage = 25;        
        fetch(`http://afsi.com/api/profilesbyareatype/${id}/${status}/${perpage}`)
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
