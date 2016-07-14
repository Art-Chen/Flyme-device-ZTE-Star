.class public Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;
.super Landroid/app/Fragment;
.source "QSTiles.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;


# instance fields
.field private mAddDeleteTile:Landroid/view/View;

.field private mDraggableGridView:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;

.field private mDraggingActive:Z

.field private mSystemUiContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;)Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->buildQSTile(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->updateAddDeleteState()V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->updateSettings()V

    return-void
.end method

.method private addTile()V
    .locals 12

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 145
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string v9, "sysui_qs_tiles"

    invoke-static {v4, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "order":Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 149
    .local v5, "savedTiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v8, "tilesList":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTileHolder;>;"
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/util/cm/QSUtils;->getAvailableTiles(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 152
    .local v7, "tile":Ljava/lang/String;
    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v7}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTileHolder;->from(Landroid/content/Context;Ljava/lang/String;)Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTileHolder;

    move-result-object v1

    .line 154
    .local v1, "holder":Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTileHolder;
    if-eqz v1, :cond_0

    .line 155
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    .end local v1    # "holder":Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTileHolder;
    .end local v7    # "tile":Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 194
    :goto_1
    return-void

    .line 164
    :cond_2
    new-instance v6, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles$1;

    invoke-direct {v6, p0, v8}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles$1;-><init>(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;Ljava/util/List;)V

    .line 180
    .local v6, "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v9, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles$2;

    invoke-direct {v9, p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles$2;-><init>(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 187
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mSystemUiContext:Landroid/content/Context;

    invoke-direct {v0, v9, v10, v8}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/util/List;)V

    .line 189
    .local v0, "adapter":Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSListAdapter;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0902a4

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/4 v10, -0x1

    invoke-virtual {v9, v0, v10, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f09041f

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method private buildQSTile(Ljava/lang/String;)Landroid/view/View;
    .locals 8
    .param p1, "tileType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 215
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTileHolder;->from(Landroid/content/Context;Ljava/lang/String;)Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTileHolder;

    move-result-object v3

    .line 216
    .local v3, "item":Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTileHolder;
    if-nez v3, :cond_0

    .line 234
    :goto_0
    return-object v4

    .line 219
    :cond_0
    invoke-virtual {p0, v4}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0400c7

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/ColoringCardView;

    .line 221
    .local v4, "qsTile":Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/ColoringCardView;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080022

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 222
    .local v1, "defaultColor":I
    invoke-virtual {v4, v1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/ColoringCardView;->setColor(I)V

    .line 223
    iget-object v6, v3, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTileHolder;->name:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 224
    const v6, 0x1020006

    invoke-virtual {v4, v6}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/ColoringCardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 225
    .local v2, "icon":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mSystemUiContext:Landroid/content/Context;

    iget-object v7, v3, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTileHolder;->resourceName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/flyme/DeviceOriginalSettings/Utils;->getNamedDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 226
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 228
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    const v6, 0x1020016

    invoke-virtual {v4, v6}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/ColoringCardView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 230
    .local v5, "title":Landroid/widget/TextView;
    iget-object v6, v3, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTileHolder;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "icon":Landroid/widget/ImageView;
    .end local v5    # "title":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v4, p1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/ColoringCardView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static determineTileCount(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sysui_qs_tiles"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "order":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->getDefaultTilesAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 243
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    return v1
.end method

.method private updateAddDeleteState()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 124
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v6}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getChildCount()I

    move-result v9

    iget-boolean v6, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mDraggingActive:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    :goto_0
    sub-int v0, v9, v6

    .line 125
    .local v0, "activeTiles":I
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/cm/QSUtils;->getAvailableTiles(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v0, v6, :cond_1

    move v3, v7

    .line 126
    .local v3, "limitReached":Z
    :goto_1
    iget-boolean v6, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mDraggingActive:Z

    if-eqz v6, :cond_2

    const v2, 0x7f02007e

    .line 127
    .local v2, "iconResId":I
    :goto_2
    iget-boolean v6, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mDraggingActive:Z

    if-eqz v6, :cond_3

    const v5, 0x7f0902a5

    .line 130
    .local v5, "titleResId":I
    :goto_3
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mAddDeleteTile:Landroid/view/View;

    const v9, 0x1020016

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 131
    .local v4, "title":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mAddDeleteTile:Landroid/view/View;

    const v9, 0x1020006

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 133
    .local v1, "icon":Landroid/widget/ImageView;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 134
    if-nez v3, :cond_5

    move v6, v7

    :goto_4
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 136
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    if-nez v3, :cond_6

    :goto_5
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 138
    return-void

    .end local v0    # "activeTiles":I
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "iconResId":I
    .end local v3    # "limitReached":Z
    .end local v4    # "title":Landroid/widget/TextView;
    .end local v5    # "titleResId":I
    :cond_0
    move v6, v7

    .line 124
    goto :goto_0

    .restart local v0    # "activeTiles":I
    :cond_1
    move v3, v8

    .line 125
    goto :goto_1

    .line 126
    .restart local v3    # "limitReached":Z
    :cond_2
    const v2, 0x7f02007b

    goto :goto_2

    .line 127
    .restart local v2    # "iconResId":I
    :cond_3
    if-eqz v3, :cond_4

    const v5, 0x7f0902a7

    goto :goto_3

    :cond_4
    const v5, 0x7f0902a6

    goto :goto_3

    .restart local v1    # "icon":Landroid/widget/ImageView;
    .restart local v4    # "title":Landroid/widget/TextView;
    .restart local v5    # "titleResId":I
    :cond_5
    move v6, v8

    .line 134
    goto :goto_4

    :cond_6
    move v7, v8

    .line 137
    goto :goto_5
.end method

.method private updateSettings()V
    .locals 6

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 198
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v2, "tiles":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v4}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 202
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v4, v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 203
    .local v3, "type":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 204
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 205
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    .end local v3    # "type":Ljava/lang/String;
    :cond_2
    const-string v4, "sysui_qs_tiles"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 212
    return-void
.end method


# virtual methods
.method public isDeleteTarget(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mDraggingActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 64
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "com.android.systemui"

    invoke-static {v8, v9}, Lcom/flyme/DeviceOriginalSettings/Utils;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mSystemUiContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 69
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string v8, "sysui_qs_tiles"

    invoke-static {v4, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "order":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/util/cm/QSUtils;->getDefaultTilesAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 72
    const-string v8, "sysui_qs_tiles"

    invoke-static {v4, v8, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    :cond_0
    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v6, v0, v1

    .line 76
    .local v6, "tileType":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->buildQSTile(Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    .line 77
    .local v5, "tile":Landroid/view/View;
    if-eqz v5, :cond_1

    .line 78
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v8, v5}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->addView(Landroid/view/View;)V

    .line 75
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v5    # "tile":Landroid/view/View;
    .end local v6    # "tileType":Ljava/lang/String;
    :cond_2
    const-string v8, ""

    invoke-direct {p0, v8}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->buildQSTile(Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mAddDeleteTile:Landroid/view/View;

    .line 83
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;

    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mAddDeleteTile:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->addView(Landroid/view/View;)V

    .line 84
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->updateAddDeleteState()V

    .line 86
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v8, p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->setOnRearrangeListener(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;)V

    .line 87
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v8, p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;

    const-string v9, "sysui_qs_main_tiles"

    invoke-static {v4, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_3

    :goto_1
    invoke-virtual {v8, v7}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->setUseLargeFirstRow(Z)V

    .line 90
    return-void

    .line 88
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    const v1, 0x7f0400e3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f100212

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;

    .line 59
    return-object v0
.end method

.method public onEndDrag()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mDraggingActive:Z

    .line 106
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->updateAddDeleteState()V

    .line 107
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->updateSettings()V

    .line 108
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mAddDeleteTile:Landroid/view/View;

    if-ne p2, v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->addTile()V

    .line 121
    :cond_0
    return-void
.end method

.method public onStartDrag(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 95
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v1, p1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mAddDeleteTile:Landroid/view/View;

    if-ne v1, v2, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    .line 98
    :cond_0
    iput-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->mDraggingActive:Z

    .line 99
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/QSTiles;->updateAddDeleteState()V

    goto :goto_0
.end method
