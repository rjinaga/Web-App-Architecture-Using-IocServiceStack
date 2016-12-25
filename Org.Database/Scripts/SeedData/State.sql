declare @state table([Code] VARCHAR(10), [Name] VARCHAR(250))
INSERT @state ([Code], [Name]) VALUES (N'AE', N'Armed forces Europe')

INSERT @state ([Code], [Name]) VALUES (N'AK', N'Alaska')

INSERT @state ([Code], [Name]) VALUES (N'AL', N'Alabama')

INSERT @state ([Code], [Name]) VALUES (N'AR', N'Arkansas')

INSERT @state ([Code], [Name]) VALUES (N'AS', N'American Samoa')

INSERT @state ([Code], [Name]) VALUES (N'AZ', N'Arizona')

INSERT @state ([Code], [Name]) VALUES (N'CA', N'California')

INSERT @state ([Code], [Name]) VALUES (N'CO', N'Colorado')

INSERT @state ([Code], [Name]) VALUES (N'CT', N'Connecticut')

INSERT @state ([Code], [Name]) VALUES (N'DC', N'District Of Columbia')

INSERT @state ([Code], [Name]) VALUES (N'DE', N'Delaware')

INSERT @state ([Code], [Name]) VALUES (N'FL', N'Florida')

INSERT @state ([Code], [Name]) VALUES (N'FM', N'Micronesia')

INSERT @state ([Code], [Name]) VALUES (N'GA', N'Georgia')

INSERT @state ([Code], [Name]) VALUES (N'GU', N'Guam')

INSERT @state ([Code], [Name]) VALUES (N'HI', N'Hawaii')

INSERT @state ([Code], [Name]) VALUES (N'IA', N'Iowa')

INSERT @state ([Code], [Name]) VALUES (N'ID', N'Idaho')

INSERT @state ([Code], [Name]) VALUES (N'IL', N'Illinois')

INSERT @state ([Code], [Name]) VALUES (N'IN', N'Indiana')

INSERT @state ([Code], [Name]) VALUES (N'KS', N'Kansas')

INSERT @state ([Code], [Name]) VALUES (N'KY', N'Kentucky')

INSERT @state ([Code], [Name]) VALUES (N'LA', N'Louisiana')

INSERT @state ([Code], [Name]) VALUES (N'MA', N'Massachusetts')

INSERT @state ([Code], [Name]) VALUES (N'MD', N'Maryland')

INSERT @state ([Code], [Name]) VALUES (N'ME', N'Maine')

INSERT @state ([Code], [Name]) VALUES (N'MH', N'Marshall Islands')

INSERT @state ([Code], [Name]) VALUES (N'MI', N'Michigan')

INSERT @state ([Code], [Name]) VALUES (N'MN', N'Minnesota')

INSERT @state ([Code], [Name]) VALUES (N'MO', N'Missouri')

INSERT @state ([Code], [Name]) VALUES (N'MS', N'Mississippi')

INSERT @state ([Code], [Name]) VALUES (N'MT', N'Montana')

INSERT @state ([Code], [Name]) VALUES (N'NA', N'Conv_Invalid_State')

INSERT @state ([Code], [Name]) VALUES (N'NC', N'North Carolina')

INSERT @state ([Code], [Name]) VALUES (N'ND', N'North Dakota')

INSERT @state ([Code], [Name]) VALUES (N'NE', N'Nebraska')

INSERT @state ([Code], [Name]) VALUES (N'NH', N'New Hampshire')

INSERT @state ([Code], [Name]) VALUES (N'NJ', N'New Jersey')

INSERT @state ([Code], [Name]) VALUES (N'NM', N'New Mexico')

INSERT @state ([Code], [Name]) VALUES (N'NV', N'Nevada')

INSERT @state ([Code], [Name]) VALUES (N'NY', N'New York')

INSERT @state ([Code], [Name]) VALUES (N'OH', N'Ohio')

INSERT @state ([Code], [Name]) VALUES (N'OK', N'Oklahoma')

INSERT @state ([Code], [Name]) VALUES (N'OR', N'Oren')

INSERT @state ([Code], [Name]) VALUES (N'PA', N'Pennsylvania')

INSERT @state ([Code], [Name]) VALUES (N'PR', N'Puerto Rico')

INSERT @state ([Code], [Name]) VALUES (N'PW', N'Palau')

INSERT @state ([Code], [Name]) VALUES (N'RI', N'Rhode Island')

INSERT @state ([Code], [Name]) VALUES (N'SC', N'South Carolina')

INSERT @state ([Code], [Name]) VALUES (N'SD', N'South Dakota')

INSERT @state ([Code], [Name]) VALUES (N'TN', N'Tennessee')

INSERT @state ([Code], [Name]) VALUES (N'TX', N'Texas')

INSERT @state ([Code], [Name]) VALUES (N'UT', N'Utah')

INSERT @state ([Code], [Name]) VALUES (N'VA', N'Virginia')

INSERT @state ([Code], [Name]) VALUES (N'VI', N'Virgin Islands')

INSERT @state ([Code], [Name]) VALUES (N'VT', N'Vermont')

INSERT @state ([Code], [Name]) VALUES (N'WA', N'Washington')

INSERT @state ([Code], [Name]) VALUES (N'WI', N'Wisconsin')

INSERT @state ([Code], [Name]) VALUES (N'WV', N'West Virginia')

INSERT @state ([Code], [Name]) VALUES (N'WY', N'Wyoming')

insert into [State]([StateCode],[Description])
select sts.Code,sts.Name from @state sts
	left outer join [State] st on st.StateCode = sts.[Code]
where st.StateCode is null