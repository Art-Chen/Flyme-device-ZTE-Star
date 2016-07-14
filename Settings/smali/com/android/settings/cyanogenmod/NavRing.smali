.class public Lcom/android/settings/cyanogenmod/NavRing;
.super Landroid/app/Fragment;
.source "NavRing.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TRIGGER_INTENT:Landroid/content/Intent;


# instance fields
.field private mEdit:Landroid/widget/LinearLayout;

.field private mRestore:Landroid/widget/LinearLayout;

.field private mSave:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NAVBAR_RING_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/cyanogenmod/NavRing;->TRIGGER_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private setEditMode(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 70
    sget-object v0, Lcom/android/settings/cyanogenmod/NavRing;->TRIGGER_INTENT:Landroid/content/Intent;

    const-string v1, "edit_state_extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NavRing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/android/settings/cyanogenmod/NavRing;->TRIGGER_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/NavRing;->mEdit:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_1

    .line 77
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/cyanogenmod/NavRing;->setEditMode(Z)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/NavRing;->mRestore:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_0

    .line 79
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NavRing;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900fd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901c6

    new-instance v2, Lcom/android/settings/cyanogenmod/NavRing$1;

    invoke-direct {v2, p0}, Lcom/android/settings/cyanogenmod/NavRing$1;-><init>(Lcom/android/settings/cyanogenmod/NavRing;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09041f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    const v0, 0x7f04007f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/cyanogenmod/NavRing;->setEditMode(Z)V

    .line 61
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/cyanogenmod/NavRing;->setEditMode(Z)V

    .line 67
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    const v1, 0x7f10002f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    .local v0, "message":Landroid/widget/TextView;
    const v1, 0x7f0902e5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 49
    const v1, 0x7f10014f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/NavRing;->mEdit:Landroid/widget/LinearLayout;

    .line 50
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/NavRing;->mEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v1, 0x7f10014e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/NavRing;->mSave:Landroid/widget/LinearLayout;

    .line 52
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/NavRing;->mSave:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v1, 0x7f10014d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/NavRing;->mRestore:Landroid/widget/LinearLayout;

    .line 54
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/NavRing;->mRestore:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method
