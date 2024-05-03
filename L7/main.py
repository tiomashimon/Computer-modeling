import pandas as pd
import plotly.express as px

df = pd.read_csv('IMDb+Movie+Database.csv')

numeric_columns = ['Gross Revenue', 'Budget']
for column in numeric_columns:
    df[column] = pd.to_numeric(df[column], errors='coerce')

# 3.1. Валовий дохід фільмів за назвою, випущених у 2005-2008 роках, відсортованих за спаданням Валового доходу
df['Release Year'] = pd.to_datetime(df['Release Date'], errors='coerce').dt.year
filtered_df = df[df['Release Year'].between(2005, 2008)]
fig1 = px.bar(filtered_df.sort_values(by='Gross Revenue', ascending=False), 
              x='Title', y='Gross Revenue',
              labels={'Title': 'Назва фільму', 'Gross Revenue': 'Валовий дохід ($)'},
              title='Валовий дохід фільмів (2005-2008)',
              text='Gross Revenue')
fig1.update_xaxes(tickangle=90)
fig1.show()

# 3.2. Кількість та найбільший Валовий дохід фільмів, які закінчуються на "2" у 2005-2008 роках
sequels_df = df[df['Title'].str.endswith('2')]
filtered_sequels_df = sequels_df[sequels_df['Release Year'].between(2005, 2008)]
num_sequels = len(filtered_sequels_df)
sequel_with_highest_revenue = filtered_sequels_df.sort_values(by='Gross Revenue', ascending=False).iloc[0]['Title']
print(f"Кількість сиквелів: {num_sequels}")
print(f"Фільм з найбільшим Валовим доходом: {sequel_with_highest_revenue}")

# 3.3. Кількість фільмів з Валовим доходом від $1,000,000 до $3,000,000 у 2005-2008 роках
filtered_revenue_df = df[df['Gross Revenue'].between(1000000, 3000000)]
filtered_revenue_df = filtered_revenue_df[filtered_revenue_df['Release Year'].between(2005, 2008)]
num_movies_in_range = len(filtered_revenue_df)
print(f"Кількість фільмів з Валовим доходом від $1,000,000 до $3,000,000: {num_movies_in_range}")

# 3.4. Кількість фільмів, які починаються з літери "М"
movies_starting_with_M = df[df['Title'].str.startswith('M')]
num_movies_starting_with_M = len(movies_starting_with_M)
print(f"Кількість фільмів, які починаються з літери 'М': {num_movies_starting_with_M}")

# 3.2. Графік кількості сиквелів у 2005-2008 роках
fig2 = px.histogram(filtered_sequels_df, x='Release Year', title='Кількість сиквелів у 2005-2008 роках')
fig2.show()

# 3.3. Графік кількості фільмів з Валовим доходом від $1,000,000 до $3,000,000 у 2005-2008 роках
fig3 = px.histogram(filtered_revenue_df, x='Release Year', title='Кількість фільмів з Валовим доходом $1,000,000 - $3,000,000 у 2005-2008 роках')
fig3.show()

# 3.4. Графік кількості фільмів, які починаються з літери "М"
fig4 = px.histogram(movies_starting_with_M, x='Release Year', title='Кількість фільмів, що починаються з "М"')
fig4.show()
