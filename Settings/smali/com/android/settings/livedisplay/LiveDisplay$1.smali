.class final Lcom/android/settings/livedisplay/LiveDisplay$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "LiveDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/livedisplay/LiveDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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
    .line 312
    const-string v2, "cmhw"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CmHardwareManager;

    .line 315
    .local v0, "cmHardwareManager":Landroid/hardware/CmHardwareManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Landroid/hardware/CmHardwareManager;->isSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 317
    const-string v2, "live_display_auto_outdoor_mode"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/hardware/CmHardwareManager;->isSupported(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 320
    const-string v2, "live_display_color_enhance"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/CmHardwareManager;->isSupported(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 323
    const-string v2, "live_display_low_power"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_2
    # invokes: Lcom/android/settings/livedisplay/LiveDisplay;->isPostProcessingSupported(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/android/settings/livedisplay/LiveDisplay;->access$400(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 326
    const-string v2, "screencolor_settings"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    :goto_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/hardware/CmHardwareManager;->isSupported(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 331
    const-string v2, "gamma_tuning"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_3
    return-object v1

    .line 328
    :cond_4
    const-string v2, "color_calibration"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
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
    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/SearchIndexableResource;>;"
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 304
    .local v1, "sir":Landroid/provider/SearchIndexableResource;
    const v2, 0x7f060028

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 305
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    return-object v0
.end method
