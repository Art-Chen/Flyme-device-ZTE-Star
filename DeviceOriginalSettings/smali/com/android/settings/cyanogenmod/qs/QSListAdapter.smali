.class public Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "QSListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter$1;,
        Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTileHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mSystemUiContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemUiContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTileHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTileHolder;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter;->mSystemUiContext:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 46
    if-nez p2, :cond_0

    .line 47
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040005

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 48
    new-instance v1, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter$Holder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter$Holder;-><init>(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter$1;)V

    .line 49
    .local v1, "holder":Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter$Holder;
    const v3, 0x1020014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter$Holder;->entry:Landroid/widget/TextView;

    .line 50
    const v3, 0x1020006

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter$Holder;->icon:Landroid/widget/ImageView;

    .line 51
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    :goto_0
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTileHolder;

    .line 58
    .local v2, "item":Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTileHolder;
    iget-object v3, v1, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter$Holder;->entry:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTileHolder;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v3, v2, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTileHolder;->resourceName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 60
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter;->mSystemUiContext:Landroid/content/Context;

    iget-object v4, v2, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTileHolder;->resourceName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/flyme/DeviceOriginalSettings/Utils;->getNamedDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 61
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 63
    iget-object v3, v1, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter$Holder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v3, v1, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter$Holder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object p2

    .line 53
    .end local v1    # "holder":Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter$Holder;
    .end local v2    # "item":Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTileHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter$Holder;

    .restart local v1    # "holder":Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter$Holder;
    goto :goto_0

    .line 66
    .restart local v2    # "item":Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTileHolder;
    :cond_1
    iget-object v3, v1, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter$Holder;->icon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
