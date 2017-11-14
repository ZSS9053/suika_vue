import Vue from 'vue'
import Router from 'vue-router'
import VueResource from 'vue-resource'

import Hello from '@/components/Hello'
import Index from '@/components/Index'
import Main from '@/components/Main'
import Products from '@/components/Products'
import Details from '@/components/Details'
import Login from '@/components/Login'
import Register from '@/components/Register'
import Usercenter from '@/components/Usercenter'
import Shoppingcart from '@/components/Shoppingcart'
import NotFound from '@/components/NotFound'


Vue.use(Router)
Vue.use(VueResource)

export default new Router({
  routes: [
    {
      path: '/',
      redirect:'/index'
    },
    {
      path:'/login',
      component:Login
    },
    {
      path:'/index',
      component:Index,
      children:[
        {
          path:'/',
          component:Main
        },
        {
          path:'/main',
          component:Main
        },
        {
          path:'/products',
          component:Products
        },
        {
          path:'/details',
          component:Details
        }
      ]
    },
    {
      path:'/products',
      component:Products
    },
    {
      path:'/register',
      component:Register
    },
    {
      path:'/usercenter',
      component:Usercenter
    },
    {
      path:'/shoppingcart',
      component:Shoppingcart
    },
    {
      path:'/*',
      component:NotFound
    }
  ]
})
