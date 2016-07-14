.class final Lcom/android/settings/notification/ZenModeSettings$16;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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
    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v0, "rt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    # invokes: Lcom/android/settings/notification/ZenModeSettings;->isDowntimeSupported(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettings;->access$900(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 611
    const-string v1, "downtime"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    const-string v1, "days"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    const-string v1, "start_time"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    const-string v1, "end_time"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    const-string v1, "downtime_mode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    :cond_0
    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    # invokes: Lcom/android/settings/notification/ZenModeSettings;->allKeyTitles(Landroid/content/Context;)Landroid/util/SparseArray;
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettings;->access$800(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v3

    .line 594
    .local v3, "keyTitles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 595
    .local v0, "N":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 596
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 597
    .local v4, "res":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 598
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 599
    .local v1, "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 600
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 601
    const v6, 0x7f090c36

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 602
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 604
    .end local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    :cond_0
    return-object v5
.end method
