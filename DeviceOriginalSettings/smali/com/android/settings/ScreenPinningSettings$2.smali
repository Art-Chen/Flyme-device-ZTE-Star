.class final Lcom/flyme/DeviceOriginalSettings/ScreenPinningSettings$2;
.super Lcom/flyme/DeviceOriginalSettings/search/BaseSearchIndexProvider;
.source "ScreenPinningSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/ScreenPinningSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5
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
    const v4, 0x7f090c8b

    .line 183
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 188
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 189
    .local v0, "data":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 190
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 191
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    # invokes: Lcom/flyme/DeviceOriginalSettings/ScreenPinningSettings;->isLockToAppEnabled(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/flyme/DeviceOriginalSettings/ScreenPinningSettings;->access$100(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 196
    .restart local v0    # "data":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    const v3, 0x7f090c90

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 197
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 198
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :goto_0
    return-object v2

    .line 201
    :cond_0
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 202
    .restart local v0    # "data":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    const v3, 0x7f090c8c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 203
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 204
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
