.class public Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;
.super Landroid/preference/DialogPreference;
.source "DisplayGamma.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$GammaSeekBar;,
        Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$SavedState;
    }
.end annotation


# static fields
.field private static final BAR_COLORS:[I


# instance fields
.field private mCmHardwareManager:Landroid/hardware/CmHardwareManager;

.field private mCurrentColors:[[I

.field private mNumberOfControls:I

.field private mOriginalColors:[[I

.field private mSeekBars:[[Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$GammaSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->BAR_COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0901f5
        0x7f0901f6
        0x7f0901f7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const-string v0, "cmhw"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CmHardwareManager;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mCmHardwareManager:Landroid/hardware/CmHardwareManager;

    .line 67
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mCmHardwareManager:Landroid/hardware/CmHardwareManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/CmHardwareManager;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mCmHardwareManager:Landroid/hardware/CmHardwareManager;

    invoke-virtual {v0}, Landroid/hardware/CmHardwareManager;->getNumGammaControls()I

    move-result v0

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mNumberOfControls:I

    .line 72
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mNumberOfControls:I

    sget-object v1, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->BAR_COLORS:[I

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$GammaSeekBar;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$GammaSeekBar;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mSeekBars:[[Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$GammaSeekBar;

    .line 74
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mNumberOfControls:I

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    .line 75
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mNumberOfControls:I

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mCurrentColors:[[I

    .line 77
    const v0, 0x7f04004d

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->setDialogLayoutResource(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;)[[Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$GammaSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mSeekBars:[[Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$GammaSeekBar;

    return-object v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->BAR_COLORS:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;)[[I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mCurrentColors:[[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;)Landroid/hardware/CmHardwareManager;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mCmHardwareManager:Landroid/hardware/CmHardwareManager;

    return-object v0
.end method

.method private buildPreferenceValue([I)Ljava/lang/String;
    .locals 3
    .param p1, "colorValues"    # [I

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 238
    if-eqz v1, :cond_0

    .line 239
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_0
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 247
    const-string v6, "cmhw"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CmHardwareManager;

    .line 249
    .local v0, "cmHardwareManager":Landroid/hardware/CmHardwareManager;
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/hardware/CmHardwareManager;->isSupported(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 265
    :cond_0
    return-void

    .line 253
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 254
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const/4 v6, 0x3

    new-array v3, v6, [I

    .line 255
    .local v3, "rgb":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/CmHardwareManager;->getNumGammaControls()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 256
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "display_gamma_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 258
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 259
    .local v5, "values":[Ljava/lang/String;
    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v3, v8

    .line 260
    aget-object v6, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v3, v9

    .line 261
    aget-object v6, v5, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v3, v10

    .line 262
    invoke-virtual {v0, v1, v3}, Landroid/hardware/CmHardwareManager;->setDisplayGammaCalibration(I[I)Z

    .line 255
    .end local v5    # "values":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 92
    invoke-super/range {p0 .. p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 94
    const v1, 0x7f1000db

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 95
    .local v8, "container":Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    .line 96
    .local v12, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    .line 97
    .local v13, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 98
    .local v14, "res":Landroid/content/res/Resources;
    const v1, 0x7f0c008b

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 102
    .local v10, "gammaDescriptors":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mNumberOfControls:I

    if-ge v3, v1, :cond_4

    .line 103
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mCmHardwareManager:Landroid/hardware/CmHardwareManager;

    invoke-virtual {v2, v3}, Landroid/hardware/CmHardwareManager;->getDisplayGammaCalibration(I)[I

    move-result-object v2

    aput-object v2, v1, v3

    .line 104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mCurrentColors:[[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    aget-object v15, v15, v3

    array-length v15, v15

    invoke-static {v2, v15}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    aput-object v2, v1, v3

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display_gamma_default_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 108
    .local v9, "defaultKey":Ljava/lang/String;
    invoke-interface {v13, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->buildPreferenceValue([I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v9, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mNumberOfControls:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 115
    const v1, 0x7f04004e

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 118
    .local v11, "header":Landroid/widget/TextView;
    array-length v1, v10

    if-ge v3, v1, :cond_2

    .line 119
    aget-object v1, v10, v3

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_1
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 127
    .end local v11    # "header":Landroid/widget/TextView;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mCmHardwareManager:Landroid/hardware/CmHardwareManager;

    invoke-virtual {v1}, Landroid/hardware/CmHardwareManager;->getDisplayGammaCalibrationMin()I

    move-result v6

    .line 128
    .local v6, "min":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mCmHardwareManager:Landroid/hardware/CmHardwareManager;

    invoke-virtual {v1}, Landroid/hardware/CmHardwareManager;->getDisplayGammaCalibrationMax()I

    move-result v7

    .line 129
    .local v7, "max":I
    const/4 v4, 0x0

    .local v4, "color":I
    :goto_2
    sget-object v1, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->BAR_COLORS:[I

    array-length v1, v1

    if-ge v4, v1, :cond_3

    .line 130
    const v1, 0x7f04004f

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 133
    .local v5, "item":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mSeekBars:[[Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$GammaSeekBar;

    aget-object v15, v1, v3

    new-instance v1, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$GammaSeekBar;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$GammaSeekBar;-><init>(Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;IILandroid/view/ViewGroup;II)V

    aput-object v1, v15, v4

    .line 134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mSeekBars:[[Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$GammaSeekBar;

    aget-object v1, v1, v3

    aget-object v1, v1, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mCurrentColors:[[I

    aget-object v2, v2, v3

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$GammaSeekBar;->setGamma(I)V

    .line 138
    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 121
    .end local v4    # "color":I
    .end local v5    # "item":Landroid/view/ViewGroup;
    .end local v6    # "min":I
    .end local v7    # "max":I
    .restart local v11    # "header":Landroid/widget/TextView;
    :cond_2
    const v1, 0x7f0901fa

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v15, 0x0

    add-int/lit8 v16, v3, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v2, v15

    invoke-virtual {v14, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 102
    .end local v11    # "header":Landroid/widget/TextView;
    .restart local v4    # "color":I
    .restart local v6    # "min":I
    .restart local v7    # "max":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 141
    .end local v4    # "color":I
    .end local v6    # "min":I
    .end local v7    # "max":I
    .end local v9    # "defaultKey":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .param p1, "positiveResult"    # Z

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 177
    if-eqz p1, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mNumberOfControls:I

    if-ge v1, v2, :cond_0

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display_gamma_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mCmHardwareManager:Landroid/hardware/CmHardwareManager;

    invoke-virtual {v3, v1}, Landroid/hardware/CmHardwareManager;->getDisplayGammaCalibration(I)[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->buildPreferenceValue([I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 189
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 184
    :cond_2
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    if-eqz v2, :cond_1

    .line 185
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget v2, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mNumberOfControls:I

    if-ge v1, v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mCmHardwareManager:Landroid/hardware/CmHardwareManager;

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    aget-object v3, v3, v1

    invoke-virtual {v2, v1, v3}, Landroid/hardware/CmHardwareManager;->setDisplayGammaCalibration(I[I)Z

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 82
    const v0, 0x7f09020e

    new-instance v1, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$1;

    invoke-direct {v1, p0}, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$1;-><init>(Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 215
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$SavedState;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 217
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 233
    :cond_1
    return-void

    :cond_2
    move-object v2, p1

    .line 221
    check-cast v2, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$SavedState;

    .line 222
    .local v2, "myState":Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$SavedState;
    invoke-virtual {v2}, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 223
    iget v3, v2, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$SavedState;->controlCount:I

    iput v3, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mNumberOfControls:I

    .line 224
    iget-object v3, v2, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$SavedState;->originalColors:[[I

    iput-object v3, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    .line 225
    iget-object v3, v2, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$SavedState;->currentColors:[[I

    iput-object v3, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mCurrentColors:[[I

    .line 227
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mNumberOfControls:I

    if-ge v1, v3, :cond_1

    .line 228
    const/4 v0, 0x0

    .local v0, "color":I
    :goto_1
    sget-object v3, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->BAR_COLORS:[I

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 229
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mSeekBars:[[Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$GammaSeekBar;

    aget-object v3, v3, v1

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mCurrentColors:[[I

    aget-object v4, v4, v1

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$GammaSeekBar;->setGamma(I)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 231
    :cond_3
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mCmHardwareManager:Landroid/hardware/CmHardwareManager;

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mCurrentColors:[[I

    aget-object v4, v4, v1

    invoke-virtual {v3, v1, v4}, Landroid/hardware/CmHardwareManager;->setDisplayGammaCalibration(I[I)Z

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 193
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 194
    .local v2, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 210
    :goto_0
    return-object v1

    .line 199
    :cond_1
    new-instance v1, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$SavedState;

    invoke-direct {v1, v2}, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 200
    .local v1, "myState":Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$SavedState;
    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mNumberOfControls:I

    iput v3, v1, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$SavedState;->controlCount:I

    .line 201
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mCurrentColors:[[I

    iput-object v3, v1, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$SavedState;->currentColors:[[I

    .line 202
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    iput-object v3, v1, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$SavedState;->originalColors:[[I

    .line 205
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mNumberOfControls:I

    if-ge v0, v3, :cond_2

    .line 206
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mCmHardwareManager:Landroid/hardware/CmHardwareManager;

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    aget-object v4, v4, v0

    invoke-virtual {v3, v0, v4}, Landroid/hardware/CmHardwareManager;->setDisplayGammaCalibration(I[I)Z

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 208
    :cond_2
    const/4 v3, 0x0

    check-cast v3, [[I

    iput-object v3, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 150
    .local v0, "d":Landroid/app/AlertDialog;
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 151
    .local v1, "defaultsButton":Landroid/widget/Button;
    new-instance v2, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$2;

    invoke-direct {v2, p0}, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma$2;-><init>(Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    return-void
.end method
