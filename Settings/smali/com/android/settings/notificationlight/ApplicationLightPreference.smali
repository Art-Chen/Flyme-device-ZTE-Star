.class public Lcom/android/settings/notificationlight/ApplicationLightPreference;
.super Landroid/preference/DialogPreference;
.source "ApplicationLightPreference.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mColorValue:I

.field private mLightColorView:Landroid/widget/ImageView;

.field private mOffValue:I

.field private mOffValueView:Landroid/widget/TextView;

.field private mOnOffChangeable:Z

.field private mOnValue:I

.field private mOnValueView:Landroid/widget/TextView;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "AppLightPreference"

    sput-object v0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "onValue"    # I
    .param p4, "offValue"    # I

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    iput p2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 74
    iput p3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 75
    iput p4, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 77
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->init()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "onValue"    # I
    .param p4, "offValue"    # I
    .param p5, "onOffChangeable"    # Z

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    iput p2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 89
    iput p3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 90
    iput p4, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 91
    iput-boolean p5, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 92
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->init()V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v1, 0x3e8

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const v0, 0xffffff

    iput v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 59
    iput v1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 60
    iput v1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 62
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->init()V

    .line 63
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/notificationlight/ApplicationLightPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notificationlight/ApplicationLightPreference;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/notificationlight/ApplicationLightPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notificationlight/ApplicationLightPreference;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings/notificationlight/ApplicationLightPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notificationlight/ApplicationLightPreference;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/notificationlight/ApplicationLightPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notificationlight/ApplicationLightPreference;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/notificationlight/ApplicationLightPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notificationlight/ApplicationLightPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "color"    # I

    .prologue
    .line 254
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 255
    .local v0, "shape":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 256
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 257
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 96
    const v0, 0x7f040092

    invoke-virtual {p0, v0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setLayoutResource(I)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    .line 98
    return-void
.end method

.method private mapLengthValue(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5
    .param p1, "time"    # Ljava/lang/Integer;

    .prologue
    .line 262
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090120

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 275
    :goto_0
    return-object v3

    .line 266
    :cond_0
    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c0080

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "timeNames":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c0081

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "timeValues":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 270
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 271
    aget-object v3, v1, v0

    goto :goto_0

    .line 269
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 275
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090121

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private mapSpeedValue(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5
    .param p1, "time"    # Ljava/lang/Integer;

    .prologue
    .line 279
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090120

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 292
    :goto_0
    return-object v3

    .line 283
    :cond_0
    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c0082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "timeNames":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c0083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "timeValues":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 287
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    aget-object v3, v1, v0

    goto :goto_0

    .line 286
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 292
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090121

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private updatePreferenceViews()V
    .locals 7

    .prologue
    const v6, 0xf0f0f0

    const/4 v5, 0x1

    .line 135
    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 136
    .local v2, "width":I
    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 138
    .local v0, "height":I
    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 139
    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 141
    iget v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_3

    iget v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    const v4, 0x101010

    sub-int v1, v3, v4

    .line 143
    .local v1, "imageColor":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    const/high16 v4, -0x1000000

    add-int/2addr v4, v1

    invoke-static {v2, v0, v4}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    .end local v1    # "imageColor":I
    :cond_0
    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValueView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 147
    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValueView:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mapLengthValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_1
    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 150
    iget v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    if-ne v3, v5, :cond_4

    .line 151
    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    :goto_1
    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mapSpeedValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_2
    return-void

    .line 141
    :cond_3
    iget v1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    goto :goto_0

    .line 153
    :cond_4
    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected createDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 168
    new-instance v0, Lcom/android/settings/notificationlight/LightSettingsDialog;

    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, -0x1000000

    iget v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    iget v4, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    iget-boolean v5, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notificationlight/LightSettingsDialog;-><init>(Landroid/content/Context;IIIZ)V

    .line 170
    .local v0, "d":Lcom/android/settings/notificationlight/LightSettingsDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notificationlight/LightSettingsDialog;->setAlphaSliderVisible(Z)V

    .line 172
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0907d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/notificationlight/ApplicationLightPreference$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/notificationlight/ApplicationLightPreference$1;-><init>(Lcom/android/settings/notificationlight/ApplicationLightPreference;Lcom/android/settings/notificationlight/LightSettingsDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/notificationlight/LightSettingsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 183
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f09041f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/notificationlight/ApplicationLightPreference$2;

    invoke-direct {v3, p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference$2;-><init>(Lcom/android/settings/notificationlight/ApplicationLightPreference;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/notificationlight/LightSettingsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 190
    return-object v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    return v0
.end method

.method public getOffValue()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    return v0
.end method

.method public getOnValue()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    .line 116
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 118
    const v1, 0x7f100173

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    .line 119
    const v1, 0x7f100171

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValueView:Landroid/widget/TextView;

    .line 120
    const v1, 0x7f100172

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    .line 124
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 125
    .local v0, "tView":Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v2, 0x112003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    .line 132
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notificationlight/LightSettingsDialog;

    .line 102
    .local v0, "d":Lcom/android/settings/notificationlight/LightSettingsDialog;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->onStart()V

    .line 105
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notificationlight/LightSettingsDialog;

    .line 109
    .local v0, "d":Lcom/android/settings/notificationlight/LightSettingsDialog;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->onStop()V

    .line 112
    :cond_0
    return-void
.end method

.method public setAllValues(III)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "onValue"    # I
    .param p3, "offValue"    # I

    .prologue
    .line 225
    iput p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 226
    iput p2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 227
    iput p3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 229
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    .line 230
    return-void
.end method

.method public setAllValues(IIIZ)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "onValue"    # I
    .param p3, "offValue"    # I
    .param p4, "onOffChangeable"    # Z

    .prologue
    .line 233
    iput p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 234
    iput p2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 235
    iput p3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 236
    iput-boolean p4, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 237
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    .line 238
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notificationlight/LightSettingsDialog;

    .line 164
    .local v0, "d":Lcom/android/settings/notificationlight/LightSettingsDialog;
    return-void
.end method
