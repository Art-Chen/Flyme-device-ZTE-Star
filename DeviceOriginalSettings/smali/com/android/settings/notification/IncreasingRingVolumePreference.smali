.class public Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;
.super Landroid/preference/Preference;
.source "IncreasingRingVolumePreference.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference$Callback;

.field private mHandler:Landroid/os/Handler;

.field private final mMainHandler:Landroid/os/Handler;

.field private mRampUpTimeSeekBar:Landroid/widget/SeekBar;

.field private mRampUpTimeValue:Landroid/widget/TextView;

.field private mRingtone:Landroid/media/Ringtone;

.field private mStartVolumeSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mMainHandler:Landroid/os/Handler;

    .line 79
    const v0, 0x7f0400a0

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->setLayoutResource(I)V

    .line 80
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->initHandler()V

    .line 81
    return-void
.end method

.method private initHandler()V
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 176
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IncreasingRingMinVolumePreference.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 174
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    .line 175
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private isSamplePlaying()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onInitSample()V
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    .line 181
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 184
    :cond_0
    return-void
.end method

.method private onStartSample()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 193
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->isSamplePlaying()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 200
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 202
    :cond_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "IncreasingRingMinVolumePreference"

    const-string v2, "Error playing ringtone"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onStopSample()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 225
    :cond_0
    return-void
.end method

.method private postStartSample()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 187
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->isSamplePlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 190
    return-void

    .line 188
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private postStopSample()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 216
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 219
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 100
    :pswitch_0
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->onStartSample()V

    goto :goto_0

    .line 103
    :pswitch_1
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->onStopSample()V

    goto :goto_0

    .line 106
    :pswitch_2
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->onInitSample()V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onActivityStop()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->postStopSample()V

    .line 91
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    .line 94
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 115
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 117
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->initHandler()V

    .line 119
    const v4, 0x7f10018f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 120
    .local v2, "seekBar":Landroid/widget/SeekBar;
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    if-ne v2, v4, :cond_0

    .line 136
    :goto_0
    return-void

    .line 122
    :cond_0
    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    .line 123
    const v4, 0x7f100192

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mRampUpTimeSeekBar:Landroid/widget/SeekBar;

    .line 124
    const v4, 0x7f100191

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mRampUpTimeValue:Landroid/widget/TextView;

    .line 126
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v4, "increasing_ring_start_vol"

    const v5, 0x3dcccccd    # 0.1f

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    .line 129
    .local v3, "startVolume":F
    const-string v4, "increasing_ring_ramp_up_time"

    const/16 v5, 0xa

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 132
    .local v1, "rampUpTime":I
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 133
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 134
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mRampUpTimeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 135
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mRampUpTimeSeekBar:Landroid/widget/SeekBar;

    div-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 155
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v2, :cond_1

    .line 156
    const-string v2, "increasing_ring_start_vol"

    int-to-float v3, p2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mRampUpTimeSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v2, :cond_0

    .line 159
    add-int/lit8 v2, p2, 0x1

    mul-int/lit8 v1, v2, 0x5

    .line 160
    .local v1, "seconds":I
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mRampUpTimeValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    mul-int/lit16 v4, v1, 0x3e8

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    if-eqz p3, :cond_0

    .line 163
    const-string v2, "increasing_ring_ramp_up_time"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mCallback:Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference$Callback;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mCallback:Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference$Callback;

    invoke-interface {v0}, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference$Callback;->onStartingSample()V

    .line 143
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->postStartSample()V

    .line 150
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference$Callback;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mCallback:Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference$Callback;

    .line 85
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->postStopSample()V

    .line 212
    :cond_0
    return-void
.end method
