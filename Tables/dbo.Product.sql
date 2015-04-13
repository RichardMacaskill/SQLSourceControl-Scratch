CREATE TABLE [dbo].[Product]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[LongName] [varchar] (400) COLLATE Latin1_General_CI_AS NULL,
[ShortName] [varchar] (100) COLLATE Latin1_General_CI_AS NULL,
[CategoryId] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [PK__Product__3214EC27567244CE] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [FK_Product_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([ID])
GO
