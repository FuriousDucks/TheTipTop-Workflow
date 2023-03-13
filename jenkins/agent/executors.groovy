import jenkins.model.*
import hudson.model.*

def instance = Jenkins.getInstance()

def numExecutors = 2

instance.setNumExecutors(numExecutors)

instance.save()