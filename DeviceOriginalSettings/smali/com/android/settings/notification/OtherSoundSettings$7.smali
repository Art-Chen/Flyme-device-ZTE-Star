.class final Lcom/flyme/DeviceOriginalSettings/notification/OtherSoundSettings$7;
.super Lcom/flyme/DeviceOriginalSettings/search/BaseSearchIndexProvider;
.source "OtherSoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/notification/OtherSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 6
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
    .line 321
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v4, "rt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    # getter for: Lcom/flyme/DeviceOriginalSettings/notification/OtherSoundSettings;->PREFS:[Lcom/flyme/DeviceOriginalSettings/notification/SettingPref;
    invoke-static {}, Lcom/flyme/DeviceOriginalSettings/notification/OtherSoundSettings;->access$200()[Lcom/flyme/DeviceOriginalSettings/notification/SettingPref;

    move-result-object v0

    .local v0, "arr$":[Lcom/flyme/DeviceOriginalSettings/notification/SettingPref;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 323
    .local v3, "pref":Lcom/flyme/DeviceOriginalSettings/notification/SettingPref;
    invoke-virtual {v3, p1}, Lcom/flyme/DeviceOriginalSettings/notification/SettingPref;->isApplicable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 324
    invoke-virtual {v3}, Lcom/flyme/DeviceOriginalSettings/notification/SettingPref;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    .end local v3    # "pref":Lcom/flyme/DeviceOriginalSettings/notification/SettingPref;
    :cond_1
    return-object v4
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
    .line 315
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 316
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const v1, 0x7f060030

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 317
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method