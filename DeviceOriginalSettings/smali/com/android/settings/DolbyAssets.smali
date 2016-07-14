.class public Lcom/flyme/DeviceOriginalSettings/DolbyAssets;
.super Ljava/lang/Object;
.source "DolbyAssets.java"


# static fields
.field private static sFont:Landroid/graphics/Typeface;


# direct methods
.method public static final getFont()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/flyme/DeviceOriginalSettings/DolbyAssets;->sFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    sget-object v0, Lcom/flyme/DeviceOriginalSettings/DolbyAssets;->sFont:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/DolbyAssets;->sFont:Landroid/graphics/Typeface;

    .line 25
    :cond_0
    return-void
.end method
