.class Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$3;
.super Landroid/os/Handler;
.source "PowerUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$3;->this$0:Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 510
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 536
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 537
    return-void

    .line 512
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryEntry;

    .line 513
    .local v1, "entry":Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryEntry;
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$3;->this$0:Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;

    iget-object v6, v1, Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v6, v6, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerGaugePreference;

    .line 516
    .local v2, "pgp":Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerGaugePreference;
    if-eqz v2, :cond_0

    .line 517
    iget-object v5, v1, Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 518
    .local v4, "userId":I
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 519
    .local v3, "userHandle":Landroid/os/UserHandle;
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$3;->this$0:Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;

    # getter for: Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;
    invoke-static {v5}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->access$300(Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerGaugePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 520
    iget-object v5, v1, Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 524
    .end local v1    # "entry":Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryEntry;
    .end local v2    # "pgp":Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerGaugePreference;
    .end local v3    # "userHandle":Landroid/os/UserHandle;
    .end local v4    # "userId":I
    :sswitch_1
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$3;->this$0:Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v5}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 525
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {v0}, Landroid/app/Activity;->reportFullyDrawn()V

    goto :goto_0

    .line 530
    .end local v0    # "activity":Landroid/app/Activity;
    :sswitch_2
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$3;->this$0:Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;

    # getter for: Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;
    invoke-static {v5}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->access$400(Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;)Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 531
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$3;->this$0:Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;

    # invokes: Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->refreshStats()V
    invoke-static {v5}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->access$500(Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;)V

    .line 532
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$3;->this$0:Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;

    # getter for: Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;
    invoke-static {v5}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->access$600(Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 533
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$3;->this$0:Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;

    # invokes: Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->refreshBatterySaverOptions()V
    invoke-static {v5}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->access$700(Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;)V

    goto :goto_0

    .line 510
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method