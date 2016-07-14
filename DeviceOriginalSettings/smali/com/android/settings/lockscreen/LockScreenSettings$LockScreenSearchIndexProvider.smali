.class Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings$LockScreenSearchIndexProvider;
.super Lcom/flyme/DeviceOriginalSettings/search/BaseSearchIndexProvider;
.source "LockScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockScreenSearchIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/search/BaseSearchIndexProvider;-><init>()V

    .line 491
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings$LockScreenSearchIndexProvider;->mIsPrimary:Z

    .line 492
    return-void

    .line 491
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 554
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 556
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    # invokes: Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    invoke-static {p1, v1}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->access$000(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v2

    .line 559
    .local v2, "resId":I
    const v3, 0x7f060040

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    const/high16 v4, 0x10000

    if-eq v3, v4, :cond_0

    .line 562
    const-string v3, "visiblepattern"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_1

    .line 567
    const-string v3, "trust_agent"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    const-string v3, "manage_trust_agents"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v3

    if-nez v3, :cond_2

    .line 573
    const-string v3, "lockscreen_visualizer"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_2
    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 516
    .local v5, "res":Landroid/content/res/Resources;
    const v9, 0x7f090465

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 518
    .local v8, "screenTitle":Ljava/lang/String;
    new-instance v2, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 519
    .local v2, "data":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    iput-object v8, v2, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 520
    iput-object v8, v2, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 521
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    iget-boolean v9, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings$LockScreenSearchIndexProvider;->mIsPrimary:Z

    if-nez v9, :cond_0

    .line 524
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v9

    if-eqz v9, :cond_1

    const v6, 0x7f090461

    .line 527
    .local v6, "resId":I
    :goto_0
    new-instance v2, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 528
    .restart local v2    # "data":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 529
    iput-object v8, v2, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 530
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    .end local v6    # "resId":I
    :cond_0
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 535
    .local v4, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 536
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-static {v9, v4}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;

    move-result-object v1

    .line 539
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 540
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;

    .line 541
    .local v0, "agent":Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v2, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 542
    .restart local v2    # "data":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    iget-object v9, v0, Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    iput-object v9, v2, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 543
    iput-object v8, v2, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 544
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 524
    .end local v0    # "agent":Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v1    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .end local v3    # "i":I
    .end local v4    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    const v6, 0x7f09045f

    goto :goto_0

    .line 547
    .restart local v4    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    return-object v7
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 498
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 502
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    # invokes: Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    invoke-static {p1, v0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->access$000(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v1

    .line 504
    .local v1, "resId":I
    new-instance v3, Landroid/provider/SearchIndexableResource;

    invoke-direct {v3, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 505
    .local v3, "sir":Landroid/provider/SearchIndexableResource;
    iput v1, v3, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 506
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    return-object v2
.end method
