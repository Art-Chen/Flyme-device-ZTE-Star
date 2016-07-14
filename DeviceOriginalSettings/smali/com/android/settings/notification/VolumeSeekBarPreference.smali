.class public Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;
.super Landroid/preference/SeekBarPreference;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$Callback;

.field private mIconResId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mMuteIconResId:I

.field private mMuted:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStopped:Z

.field private mStream:I

.field private mSuppressionText:Ljava/lang/String;

.field private mSuppressionTextView:Landroid/widget/TextView;

.field private mVolumizer:Landroid/preference/SeekBarVolumizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    const v0, 0x7f0400b2

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->setLayoutResource(I)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;)Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mCallback:Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;

    .prologue
    .line 39
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mStream:I

    return v0
.end method

.method static synthetic access$200(Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mMuted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mMuted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->updateIconView()V

    return-void
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 110
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v2, :cond_0

    .line 143
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 112
    new-instance v1, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$1;

    invoke-direct {v1, p0}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$1;-><init>(Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;)V

    .line 132
    .local v1, "sbvc":Landroid/preference/SeekBarVolumizer$Callback;
    iget v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mStream:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v0

    .line 133
    .local v0, "sampleUri":Landroid/net/Uri;
    :goto_1
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    if-nez v2, :cond_1

    .line 134
    new-instance v2, Landroid/preference/SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mStream:I

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/SeekBarVolumizer;->start()V

    .line 137
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Landroid/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 138
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->updateIconView()V

    .line 139
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mCallback:Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$Callback;

    if-eqz v2, :cond_2

    .line 140
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mCallback:Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$Callback;

    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mStream:I

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 142
    :cond_2
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->updateSuppressionText()V

    goto :goto_0

    .line 132
    .end local v0    # "sampleUri":Landroid/net/Uri;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateIconView()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 156
    :cond_0
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mIconResId:I

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 158
    :cond_1
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mMuted:Z

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateSuppressionText()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 192
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 195
    .local v0, "showSuppression":Z
    :goto_0
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 198
    .end local v0    # "showSuppression":Z
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 194
    goto :goto_0

    .restart local v0    # "showSuppression":Z
    :cond_2
    move v2, v3

    .line 195
    goto :goto_1

    :cond_3
    move v3, v1

    .line 196
    goto :goto_2
.end method


# virtual methods
.method public onActivityResume()V
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mStopped:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->init()V

    .line 85
    :cond_0
    return-void
.end method

.method public onActivityStop()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mStopped:Z

    .line 90
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stop()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    .line 94
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindView(Landroid/view/View;)V

    .line 99
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mStream:I

    if-nez v0, :cond_0

    .line 100
    const-string v0, "VolumeSeekBarPreference"

    const-string v1, "No stream found, not binding volumizer"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return-void

    .line 103
    :cond_0
    const v0, 0x1020365

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 104
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    .line 105
    const v0, 0x7f1001ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    .line 106
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->init()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 148
    invoke-super {p0, p1, p2, p3}, Landroid/preference/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 149
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mCallback:Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$Callback;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mCallback:Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$Callback;

    iget v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mStream:I

    invoke-interface {v0, v1, p2}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 152
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$Callback;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mCallback:Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$Callback;

    .line 79
    return-void
.end method

.method public setMuteIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 174
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    if-ne v0, p1, :cond_0

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iput p1, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    .line 176
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->updateIconView()V

    goto :goto_0
.end method

.method public setStream(I)V
    .locals 0
    .param p1, "stream"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mStream:I

    .line 75
    return-void
.end method

.method public setSuppressionText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    .line 188
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->updateSuppressionText()V

    goto :goto_0
.end method

.method public showIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 168
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mIconResId:I

    if-ne v0, p1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    iput p1, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mIconResId:I

    .line 170
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->updateIconView()V

    goto :goto_0
.end method
