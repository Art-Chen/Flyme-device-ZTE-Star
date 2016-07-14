.class final Lcom/flyme/DeviceOriginalSettings/SoundSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumePreferenceCallback"
.end annotation


# instance fields
.field private mCurrent:Landroid/preference/SeekBarVolumizer;

.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;


# direct methods
.method private constructor <init>(Lcom/flyme/DeviceOriginalSettings/SoundSettings;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/DeviceOriginalSettings/SoundSettings;Lcom/flyme/DeviceOriginalSettings/SoundSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/DeviceOriginalSettings/SoundSettings;
    .param p2, "x1"    # Lcom/flyme/DeviceOriginalSettings/SoundSettings$1;

    .prologue
    .line 561
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SoundSettings$VolumePreferenceCallback;-><init>(Lcom/flyme/DeviceOriginalSettings/SoundSettings;)V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 4
    .param p1, "sbv"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    const/4 v1, 0x3

    .line 566
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eq v0, p1, :cond_0

    .line 567
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->mIncreasingRingVolume:Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$900(Lcom/flyme/DeviceOriginalSettings/SoundSettings;)Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->mIncreasingRingVolume:Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$900(Lcom/flyme/DeviceOriginalSettings/SoundSettings;)Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/notification/IncreasingRingVolumePreference;->stopSample()V

    .line 572
    :cond_1
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    .line 573
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_2

    .line 574
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->mHandler:Lcom/flyme/DeviceOriginalSettings/SoundSettings$H;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$1000(Lcom/flyme/DeviceOriginalSettings/SoundSettings;)Lcom/flyme/DeviceOriginalSettings/SoundSettings$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/SoundSettings$H;->removeMessages(I)V

    .line 575
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->mHandler:Lcom/flyme/DeviceOriginalSettings/SoundSettings$H;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$1000(Lcom/flyme/DeviceOriginalSettings/SoundSettings;)Lcom/flyme/DeviceOriginalSettings/SoundSettings$H;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/flyme/DeviceOriginalSettings/SoundSettings$H;->sendEmptyMessageDelayed(IJ)Z

    .line 577
    :cond_2
    return-void
.end method

.method public onStreamValueChanged(II)V
    .locals 0
    .param p1, "stream"    # I
    .param p2, "progress"    # I

    .prologue
    .line 582
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 588
    :cond_0
    return-void
.end method
