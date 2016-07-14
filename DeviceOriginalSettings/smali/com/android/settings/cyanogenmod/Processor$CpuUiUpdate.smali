.class Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;
.super Ljava/lang/Object;
.source "Processor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CpuUiUpdate"
.end annotation


# instance fields
.field public currentFrequency:Ljava/lang/String;

.field public currentGovernor:Ljava/lang/String;

.field public maxFrequency:Ljava/lang/String;

.field public minFrequency:Ljava/lang/String;

.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;


# direct methods
.method private constructor <init>(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;->this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;
    .param p2, "x1"    # Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$1;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;-><init>(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 84
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;->currentFrequency:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;->this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;

    # getter for: Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->mCurFrequencyPref:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->access$100(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;->this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;->currentFrequency:Ljava/lang/String;

    # invokes: Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->access$000(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;->maxFrequency:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;->this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;

    # getter for: Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->access$200(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;->maxFrequency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;->this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;

    # getter for: Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->access$200(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;->this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;

    # getter for: Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->mMaxFrequencyFormat:Ljava/lang/String;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->access$300(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;->this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;->maxFrequency:Ljava/lang/String;

    # invokes: Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->access$000(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;->minFrequency:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;->this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;

    # getter for: Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->access$400(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;->minFrequency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;->this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;

    # getter for: Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->access$400(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;->this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;

    # getter for: Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->mMinFrequencyFormat:Ljava/lang/String;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->access$500(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;->this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;->minFrequency:Ljava/lang/String;

    # invokes: Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->access$000(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;->currentGovernor:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;->this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;

    # getter for: Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->access$700(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;->this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;

    # getter for: Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->mGovernorFormat:Ljava/lang/String;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->access$600(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor$CpuUiUpdate;->currentGovernor:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    :cond_3
    return-void
.end method
