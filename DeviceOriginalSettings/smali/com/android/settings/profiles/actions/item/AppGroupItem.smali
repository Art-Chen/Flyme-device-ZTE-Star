.class public Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AppGroupItem;
.super Ljava/lang/Object;
.source "AppGroupItem.java"

# interfaces
.implements Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/Item;


# instance fields
.field mGroup:Landroid/app/ProfileGroup;

.field mProfile:Landroid/app/Profile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/app/Profile;Landroid/app/ProfileGroup;)V
    .locals 2
    .param p1, "profile"    # Landroid/app/Profile;
    .param p2, "group"    # Landroid/app/ProfileGroup;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AppGroupItem;->mProfile:Landroid/app/Profile;

    .line 42
    if-nez p2, :cond_0

    .line 43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "profile group can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AppGroupItem;->mGroup:Landroid/app/ProfileGroup;

    .line 46
    return-void
.end method


# virtual methods
.method public getGroupUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AppGroupItem;->mGroup:Landroid/app/ProfileGroup;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AppGroupItem;->mGroup:Landroid/app/ProfileGroup;

    invoke-virtual {v0}, Landroid/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRowType()Lcom/flyme/DeviceOriginalSettings/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/flyme/DeviceOriginalSettings/profiles/actions/ItemListAdapter$RowType;->APP_GROUP_ITEM:Lcom/flyme/DeviceOriginalSettings/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 68
    if-nez p2, :cond_0

    .line 69
    const v5, 0x7f04006c

    invoke-virtual {p1, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 74
    .local v4, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "profile"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProfileManager;

    .line 77
    .local v2, "profileManager":Landroid/app/ProfileManager;
    const v5, 0x7f100005

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 78
    .local v3, "text":Landroid/widget/TextView;
    const v5, 0x7f100058

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    .local v0, "desc":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AppGroupItem;->mGroup:Landroid/app/ProfileGroup;

    if-eqz v5, :cond_2

    .line 81
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AppGroupItem;->mGroup:Landroid/app/ProfileGroup;

    invoke-virtual {v5}, Landroid/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ProfileManager;->getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;

    move-result-object v1

    .line 82
    .local v1, "notifGroup":Landroid/app/NotificationGroup;
    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {v1}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_1
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    .end local v1    # "notifGroup":Landroid/app/NotificationGroup;
    :goto_2
    return-object v4

    .line 71
    .end local v0    # "desc":Landroid/widget/TextView;
    .end local v2    # "profileManager":Landroid/app/ProfileManager;
    .end local v3    # "text":Landroid/widget/TextView;
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    move-object v4, p2

    .restart local v4    # "view":Landroid/view/View;
    goto :goto_0

    .line 85
    .restart local v0    # "desc":Landroid/widget/TextView;
    .restart local v1    # "notifGroup":Landroid/app/NotificationGroup;
    .restart local v2    # "profileManager":Landroid/app/ProfileManager;
    .restart local v3    # "text":Landroid/widget/TextView;
    :cond_1
    const-string v5, "<unknown>"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 89
    .end local v1    # "notifGroup":Landroid/app/NotificationGroup;
    :cond_2
    const v5, 0x7f090023

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 90
    const v5, 0x7f090024

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 92
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method
