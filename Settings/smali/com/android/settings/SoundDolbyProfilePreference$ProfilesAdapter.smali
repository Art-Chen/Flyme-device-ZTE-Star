.class Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;
.super Landroid/widget/BaseAdapter;
.source "SoundDolbyProfilePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SoundDolbyProfilePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfilesAdapter"
.end annotation


# instance fields
.field private final mDefaultProfileNames:[Ljava/lang/String;

.field private final mProfiles:[Lcom/android/settings/SoundDolbyProfilePreference$Profile;

.field final synthetic this$0:Lcom/android/settings/SoundDolbyProfilePreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/SoundDolbyProfilePreference;)V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 227
    iput-object p1, p0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->this$0:Lcom/android/settings/SoundDolbyProfilePreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 228
    invoke-virtual {p1}, Lcom/android/settings/SoundDolbyProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 229
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    .line 230
    iget-object v1, p0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const v2, 0x7f090cf3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 231
    iget-object v1, p0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const v2, 0x7f090cf4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 232
    iget-object v1, p0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const v2, 0x7f090cf5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 233
    iget-object v1, p0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const v2, 0x7f090cf6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    .line 234
    iget-object v1, p0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const v2, 0x7f090cf7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    .line 235
    iget-object v1, p0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const/4 v2, 0x5

    const v3, 0x7f090cf8

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 238
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/android/settings/SoundDolbyProfilePreference$Profile;

    iput-object v1, p0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->mProfiles:[Lcom/android/settings/SoundDolbyProfilePreference$Profile;

    .line 239
    iget-object v1, p0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->mProfiles:[Lcom/android/settings/SoundDolbyProfilePreference$Profile;

    new-instance v2, Lcom/android/settings/SoundDolbyProfilePreference$Profile;

    const v3, 0x7f020031

    const v4, 0x7f020030

    const v5, 0x7f02002f

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/android/settings/SoundDolbyProfilePreference$Profile;-><init>(Lcom/android/settings/SoundDolbyProfilePreference;III)V

    aput-object v2, v1, v6

    .line 241
    iget-object v1, p0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->mProfiles:[Lcom/android/settings/SoundDolbyProfilePreference$Profile;

    new-instance v2, Lcom/android/settings/SoundDolbyProfilePreference$Profile;

    const v3, 0x7f020034

    const v4, 0x7f020033

    const v5, 0x7f020032

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/android/settings/SoundDolbyProfilePreference$Profile;-><init>(Lcom/android/settings/SoundDolbyProfilePreference;III)V

    aput-object v2, v1, v7

    .line 243
    iget-object v1, p0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->mProfiles:[Lcom/android/settings/SoundDolbyProfilePreference$Profile;

    new-instance v2, Lcom/android/settings/SoundDolbyProfilePreference$Profile;

    const v3, 0x7f02002d

    const v4, 0x7f02002c

    const v5, 0x7f02002b

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/android/settings/SoundDolbyProfilePreference$Profile;-><init>(Lcom/android/settings/SoundDolbyProfilePreference;III)V

    aput-object v2, v1, v8

    .line 245
    iget-object v1, p0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->mProfiles:[Lcom/android/settings/SoundDolbyProfilePreference$Profile;

    new-instance v2, Lcom/android/settings/SoundDolbyProfilePreference$Profile;

    const v3, 0x7f02003f

    const v4, 0x7f02003e

    const v5, 0x7f02003d

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/android/settings/SoundDolbyProfilePreference$Profile;-><init>(Lcom/android/settings/SoundDolbyProfilePreference;III)V

    aput-object v2, v1, v9

    .line 247
    iget-object v1, p0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->mProfiles:[Lcom/android/settings/SoundDolbyProfilePreference$Profile;

    new-instance v2, Lcom/android/settings/SoundDolbyProfilePreference$Profile;

    const v3, 0x7f020039

    const v4, 0x7f020038

    const v5, 0x7f020037

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/android/settings/SoundDolbyProfilePreference$Profile;-><init>(Lcom/android/settings/SoundDolbyProfilePreference;III)V

    aput-object v2, v1, v10

    .line 249
    iget-object v1, p0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->mProfiles:[Lcom/android/settings/SoundDolbyProfilePreference$Profile;

    const/4 v2, 0x5

    new-instance v3, Lcom/android/settings/SoundDolbyProfilePreference$Profile;

    const v4, 0x7f02003c

    const v5, 0x7f02003b

    const v6, 0x7f02003a

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/android/settings/SoundDolbyProfilePreference$Profile;-><init>(Lcom/android/settings/SoundDolbyProfilePreference;III)V

    aput-object v3, v1, v2

    .line 251
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SoundDolbyProfilePreference;Lcom/android/settings/SoundDolbyProfilePreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/SoundDolbyProfilePreference;
    .param p2, "x1"    # Lcom/android/settings/SoundDolbyProfilePreference$1;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;-><init>(Lcom/android/settings/SoundDolbyProfilePreference;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->mProfiles:[Lcom/android/settings/SoundDolbyProfilePreference$Profile;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->mProfiles:[Lcom/android/settings/SoundDolbyProfilePreference$Profile;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 333
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 254
    # getter for: Lcom/android/settings/SoundDolbyProfilePreference;->mDsClient:Landroid/dolby/DsClient;
    invoke-static {}, Lcom/android/settings/SoundDolbyProfilePreference;->access$100()Landroid/dolby/DsClient;

    move-result-object v2

    .line 256
    .local v2, "dsClient":Landroid/dolby/DsClient;
    move-object/from16 v10, p2

    .line 258
    .local v10, "row":Landroid/view/View;
    if-nez v10, :cond_0

    .line 259
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f040052

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 262
    const v13, 0x7f1000e7

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 263
    .local v12, "tv":Landroid/widget/TextView;
    if-eqz v12, :cond_0

    .line 264
    invoke-static {}, Lcom/android/settings/DolbyAssets;->getFont()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 268
    .end local v12    # "tv":Landroid/widget/TextView;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->mProfiles:[Lcom/android/settings/SoundDolbyProfilePreference$Profile;

    aget-object v7, v13, p1

    .line 269
    .local v7, "item":Lcom/android/settings/SoundDolbyProfilePreference$Profile;
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v5

    .line 270
    .local v5, "engineEnabled":Z
    const/4 v8, 0x0

    .line 272
    .local v8, "itemName":Ljava/lang/String;
    const/4 v13, 0x4

    move/from16 v0, p1

    if-ge v0, v13, :cond_3

    .line 273
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    aget-object v8, v13, p1

    .line 274
    const/4 v4, 0x1

    .line 303
    .local v4, "enabled":Z
    :cond_1
    :goto_0
    if-eqz v4, :cond_9

    if-eqz v5, :cond_9

    const/4 v4, 0x1

    .line 305
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->this$0:Lcom/android/settings/SoundDolbyProfilePreference;

    # getter for: Lcom/android/settings/SoundDolbyProfilePreference;->mSelectedPosition:I
    invoke-static {v13}, Lcom/android/settings/SoundDolbyProfilePreference;->access$300(Lcom/android/settings/SoundDolbyProfilePreference;)I

    move-result v13

    move/from16 v0, p1

    if-ne v0, v13, :cond_a

    if-eqz v5, :cond_a

    const/4 v11, 0x1

    .line 306
    .local v11, "selected":Z
    :goto_2
    const v13, 0x7f1000e7

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 307
    .local v9, "nameTextView":Landroid/widget/TextView;
    const v13, 0x7f1000e6

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 309
    .local v6, "icon":Landroid/widget/ImageView;
    if-eqz v9, :cond_2

    .line 310
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    if-eqz v4, :cond_b

    const v13, 0x7f080058

    :goto_3
    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    :cond_2
    invoke-virtual {v7, v11, v4}, Lcom/android/settings/SoundDolbyProfilePreference$Profile;->getIcon(ZZ)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    if-eqz v11, :cond_c

    const v13, 0x7f02002e

    :goto_4
    invoke-virtual {v10, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 318
    return-object v10

    .line 276
    .end local v4    # "enabled":Z
    .end local v6    # "icon":Landroid/widget/ImageView;
    .end local v9    # "nameTextView":Landroid/widget/TextView;
    .end local v11    # "selected":Z
    :cond_3
    const/4 v8, 0x0

    .line 277
    if-eqz v2, :cond_4

    .line 279
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->this$0:Lcom/android/settings/SoundDolbyProfilePreference;

    invoke-virtual {v13}, Lcom/android/settings/SoundDolbyProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/SoundDolbyProfilePreference;->getCustomModifyFlag(Landroid/content/Context;)I

    move-result v1

    .line 280
    .local v1, "cmf":I
    const/4 v13, 0x4

    move/from16 v0, p1

    if-ne v13, v0, :cond_6

    .line 281
    and-int/lit8 v13, v1, 0x1

    if-nez v13, :cond_5

    .line 282
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    aget-object v8, v13, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v1    # "cmf":I
    :cond_4
    :goto_5
    if-eqz v8, :cond_8

    const/4 v4, 0x1

    .line 299
    .restart local v4    # "enabled":Z
    :goto_6
    if-nez v8, :cond_1

    .line 300
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    aget-object v8, v13, p1

    goto :goto_0

    .line 284
    .end local v4    # "enabled":Z
    .restart local v1    # "cmf":I
    :cond_5
    :try_start_1
    invoke-virtual {v2}, Landroid/dolby/DsClient;->getProfileNames()[Ljava/lang/String;

    move-result-object v13

    aget-object v8, v13, p1

    goto :goto_5

    .line 286
    :cond_6
    const/4 v13, 0x5

    move/from16 v0, p1

    if-ne v13, v0, :cond_4

    .line 287
    and-int/lit8 v13, v1, 0x2

    if-nez v13, :cond_7

    .line 288
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    aget-object v8, v13, p1

    goto :goto_5

    .line 290
    :cond_7
    invoke-virtual {v2}, Landroid/dolby/DsClient;->getProfileNames()[Ljava/lang/String;

    move-result-object v13

    aget-object v8, v13, p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 293
    .end local v1    # "cmf":I
    :catch_0
    move-exception v3

    .line 294
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 295
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundDolbyProfilePreference$ProfilesAdapter;->this$0:Lcom/android/settings/SoundDolbyProfilePreference;

    # invokes: Lcom/android/settings/SoundDolbyProfilePreference;->onDsClientError()V
    invoke-static {v13}, Lcom/android/settings/SoundDolbyProfilePreference;->access$200(Lcom/android/settings/SoundDolbyProfilePreference;)V

    goto :goto_5

    .line 298
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    .line 303
    .restart local v4    # "enabled":Z
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 305
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 311
    .restart local v6    # "icon":Landroid/widget/ImageView;
    .restart local v9    # "nameTextView":Landroid/widget/TextView;
    .restart local v11    # "selected":Z
    :cond_b
    const v13, 0x7f080059

    goto :goto_3

    .line 316
    :cond_c
    const/4 v13, 0x0

    goto :goto_4
.end method
