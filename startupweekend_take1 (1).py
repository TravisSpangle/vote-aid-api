
# coding: utf-8

# In[1]:

import graphlab


# In[5]:

SFrame.read_csv(/Users/matthewlopes/Desktop/machine_learning/startupweekend.csv, delimiter=',', header=True, error_bad_lines=False, comment_char='', escape_char='\\', double_quote=True, quote_char='"', skip_initial_space=True, column_type_hints=None, na_values=['NA'], line_terminator='\n', usecols=[], nrows=None, skiprows=0, verbose=True, nrows_to_infer=100)


# In[6]:

url = '/Users/matthewlopes/Desktop/machine_learning/startupweekend.csv'


# In[7]:

SFrame.read_csv(url)


# In[8]:

sf = graphlab.SFrame('url')


# In[9]:

sf = graphlab.SFrame('startupweekend.csv')


# In[10]:

sf = graphlab.SFrame('startupweekend.csv')


# In[11]:

sf.show()


# In[12]:

graphlab.canvas.set_target('ipynb')


# In[13]:

sf.show()


# In[14]:

sf_train, sf_test = sf.random_split(.75, seed=0)


# In[15]:

print(sf_train)


# In[16]:

sf_train.tail


# In[17]:

sf.show()


# In[44]:

hillary_model = graphlab.linear_regression.create(sf_train, target='Hillary Clinton', features=['Q1', 'Q2', 'Q3', 'Q4', 'Q5', 'Q6', 'Q7', 'Q8', 'Q9', 'Q10', 'Q11', 'Q12', 'Q13', 'Q14', 'Q15', 'Q16', 'Q17', 'Q18', 'Q19', 'Q20','Q21','Q22'])


# In[49]:

hillary_results = hillary_model.evaluate(sf_train)


# In[41]:

hillary_results_test = hillary_model.evaluate(sf_test)


# In[22]:

hillary_results.show()


# In[23]:

print(hillary_results)


# In[45]:

jill_model = graphlab.linear_regression.create(sf_train, target='Jill Stein', features=['Q1', 'Q2', 'Q3', 'Q4', 'Q5', 'Q6', 'Q7', 'Q8', 'Q9', 'Q10', 'Q11', 'Q12', 'Q13', 'Q14', 'Q15', 'Q16', 'Q17', 'Q18', 'Q19', 'Q20','Q21','Q22'])


# In[51]:

gary_model = graphlab.linear_regression.create(sf_train, target='Gary Johnson', features=['Q1', 'Q2', 'Q3', 'Q4', 'Q5', 'Q6', 'Q7', 'Q8', 'Q9', 'Q10', 'Q11', 'Q12', 'Q13', 'Q14', 'Q15', 'Q16', 'Q17', 'Q18', 'Q19', 'Q20','Q21','Q22'])


# In[50]:

donald_model = graphlab.linear_regression.create(sf_train, target='Donald Trump', features=['Q1', 'Q2', 'Q3', 'Q4', 'Q5', 'Q6', 'Q7', 'Q8', 'Q9', 'Q10', 'Q11', 'Q12', 'Q13', 'Q14', 'Q15', 'Q16', 'Q17', 'Q18', 'Q19', 'Q20','Q21','Q22'])


# In[46]:

darrell_model = graphlab.linear_regression.create(sf_train, target='Darrell Castle', features=['Q1', 'Q2', 'Q3', 'Q4', 'Q5', 'Q6', 'Q7', 'Q8', 'Q9', 'Q10', 'Q11', 'Q12', 'Q13', 'Q14', 'Q15', 'Q16', 'Q17', 'Q18', 'Q19', 'Q20','Q21','Q22'])


# In[52]:

jill_results = jill_model.evaluate(sf_train)


# In[36]:

jill_results_test = jill_model.evaluate(sf_test)


# In[53]:

gary_results = gary_model.evaluate(sf_train)


# In[37]:

gary_results_test = gary_model.evaluate(sf_test)


# In[54]:

donald_results = donald_model.evaluate(sf_train)


# In[38]:

donald_results_test = donald_model.evaluate(sf_test)


# In[55]:

darrell_results = darrell_model.evaluate(sf_train)


# In[39]:

darrell_results_test = darrell_model.evaluate(sf_test)


# In[56]:

print(hillary_results)
print(jill_results)
print(gary_results)
print(donald_results)
print(darrell_results)


# In[57]:

print(hillary_results_test)
print(jill_results_test)
print(gary_results_test)
print(donald_results_test)
print(darrell_results_test)


# In[65]:

survey = graphlab.SFrame('vps2038.csv')


# In[60]:

survey.show()


# In[131]:

survey_train, survey_test = survey.random_split(.5, seed=1)


# In[116]:

m = graphlab.classifier.create(survey_train,
                               features = ('q1', 'q2', 'q3', 'q4', 'q5', 'q6', 'q7', 'q8', 'q9', 'q10', 'q11', 'q12', 'q13', 'q14', 'q15', 'q16', 'q17', 'q18', 'q19', 'q20','q21','q22'),
                               target='president')


# In[97]:




# In[117]:

m_results = m.evaluate(survey_train)


# In[118]:

print(m_results)


# In[119]:

m.head()


# In[120]:

survey_train.head()


# In[121]:

surveylog_mod = graphlab.logistic_classifier.create(survey_train,
                                     target='president',
                                     features=['q1', 'q2', 'q3', 'q4', 'q5', 'q6', 'q7', 'q8', 'q9', 'q11', 'q12', 'q13', 'q14', 'q15', 'q16', 'q18', 'q19', 'q20','q21','q22'])


# In[122]:

surveylog_results = surveylog_mod.evaluate(survey_test)


# In[123]:

print(surveylog_results)


# In[138]:

hillary_survey_res = surveylog_mod.evaluate(survey_test)


# In[130]:

print(hillary_survey_res)


# In[163]:

survey_train, survey_test = survey.random_split(.65, seed=3)


# In[164]:

hillary_survey_res = surveylog_mod.evaluate(survey_test)


# In[165]:

print(hillary_survey_res)


# In[ ]:




# In[ ]:



