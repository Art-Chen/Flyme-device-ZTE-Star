.class Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$1;
.super Ljava/lang/Object;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Landroid/preference/SeekBarVolumizer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuted(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mMuted:Z
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->access$200(Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;

    # setter for: Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mMuted:Z
    invoke-static {v0, p1}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->access$202(Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;Z)Z

    .line 129
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;

    # invokes: Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->updateIconView()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->access$300(Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 121
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mCallback:Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->access$000(Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;)Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mCallback:Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->access$000(Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;)Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mStream:I
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->access$100(Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 124
    :cond_0
    return-void
.end method

.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 1
    .param p1, "sbv"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mCallback:Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->access$000(Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;)Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->mCallback:Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;->access$000(Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference;)Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/flyme/DeviceOriginalSettings/notification/VolumeSeekBarPreference$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    .line 118
    :cond_0
    return-void
.end method
