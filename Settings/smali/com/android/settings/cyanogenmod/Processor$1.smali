.class Lcom/android/settings/cyanogenmod/Processor$1;
.super Ljava/lang/Object;
.source "Processor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/Processor;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/Processor;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/Processor$1;->this$0:Lcom/android/settings/cyanogenmod/Processor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 107
    # getter for: Lcom/android/settings/cyanogenmod/Processor;->FREQ_CUR_FILE:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/cyanogenmod/Processor;->access$800()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor$1;->this$0:Lcom/android/settings/cyanogenmod/Processor;

    # getter for: Lcom/android/settings/cyanogenmod/Processor;->mCpuUiUpdate:Lcom/android/settings/cyanogenmod/Processor$CpuUiUpdate;
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/Processor;->access$900(Lcom/android/settings/cyanogenmod/Processor;)Lcom/android/settings/cyanogenmod/Processor$CpuUiUpdate;

    move-result-object v0

    # getter for: Lcom/android/settings/cyanogenmod/Processor;->FREQ_CUR_FILE:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/cyanogenmod/Processor;->access$800()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/cyanogenmod/Processor$CpuUiUpdate;->currentFrequency:Ljava/lang/String;

    .line 111
    :cond_0
    sget-object v0, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MIN_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor$1;->this$0:Lcom/android/settings/cyanogenmod/Processor;

    # getter for: Lcom/android/settings/cyanogenmod/Processor;->mCpuUiUpdate:Lcom/android/settings/cyanogenmod/Processor$CpuUiUpdate;
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/Processor;->access$900(Lcom/android/settings/cyanogenmod/Processor;)Lcom/android/settings/cyanogenmod/Processor$CpuUiUpdate;

    move-result-object v0

    sget-object v1, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MIN_FILE:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/cyanogenmod/Processor$CpuUiUpdate;->minFrequency:Ljava/lang/String;

    .line 115
    :cond_1
    sget-object v0, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MAX_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor$1;->this$0:Lcom/android/settings/cyanogenmod/Processor;

    # getter for: Lcom/android/settings/cyanogenmod/Processor;->mCpuUiUpdate:Lcom/android/settings/cyanogenmod/Processor$CpuUiUpdate;
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/Processor;->access$900(Lcom/android/settings/cyanogenmod/Processor;)Lcom/android/settings/cyanogenmod/Processor$CpuUiUpdate;

    move-result-object v0

    sget-object v1, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MAX_FILE:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/cyanogenmod/Processor$CpuUiUpdate;->maxFrequency:Ljava/lang/String;

    .line 119
    :cond_2
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v0}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor$1;->this$0:Lcom/android/settings/cyanogenmod/Processor;

    # getter for: Lcom/android/settings/cyanogenmod/Processor;->mCpuUiUpdate:Lcom/android/settings/cyanogenmod/Processor$CpuUiUpdate;
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/Processor;->access$900(Lcom/android/settings/cyanogenmod/Processor;)Lcom/android/settings/cyanogenmod/Processor$CpuUiUpdate;

    move-result-object v0

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v1}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/cyanogenmod/Processor$CpuUiUpdate;->currentGovernor:Ljava/lang/String;

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor$1;->this$0:Lcom/android/settings/cyanogenmod/Processor;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/Processor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Processor$1;->this$0:Lcom/android/settings/cyanogenmod/Processor;

    # getter for: Lcom/android/settings/cyanogenmod/Processor;->mCpuUiUpdate:Lcom/android/settings/cyanogenmod/Processor$CpuUiUpdate;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/Processor;->access$900(Lcom/android/settings/cyanogenmod/Processor;)Lcom/android/settings/cyanogenmod/Processor$CpuUiUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor$1;->this$0:Lcom/android/settings/cyanogenmod/Processor;

    # getter for: Lcom/android/settings/cyanogenmod/Processor;->mCpuInfoHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/Processor;->access$1100(Lcom/android/settings/cyanogenmod/Processor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Processor$1;->this$0:Lcom/android/settings/cyanogenmod/Processor;

    # getter for: Lcom/android/settings/cyanogenmod/Processor;->mUpdateCpuFreqValues:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/Processor;->access$1000(Lcom/android/settings/cyanogenmod/Processor;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    return-void
.end method
