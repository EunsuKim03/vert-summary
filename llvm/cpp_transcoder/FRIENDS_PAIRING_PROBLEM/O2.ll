; ModuleID = 'benchmark/cpp_transcoder/FRIENDS_PAIRING_PROBLEM/FRIENDS_PAIRING_PROBLEM_processed.cpp'
source_filename = "benchmark/cpp_transcoder/FRIENDS_PAIRING_PROBLEM/FRIENDS_PAIRING_PROBLEM_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FRIENDS_PAIRING_PROBLEM_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = icmp slt i32 %0, 0
  br i1 %5, label %104, label %6

6:                                                ; preds = %1
  store i32 0, i32* %4, align 16
  %7 = icmp eq i32 %0, 0
  br i1 %7, label %100, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 1, i32* %9, align 4
  %10 = icmp eq i32 %2, 2
  br i1 %10, label %100, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds i32, i32* %4, i64 2
  store i32 2, i32* %12, align 8
  %13 = icmp eq i32 %2, 3
  br i1 %13, label %100, label %14

14:                                               ; preds = %11
  %15 = add nsw i64 %3, -4
  %16 = and i64 %15, 4294967294
  %17 = icmp eq i64 %16, 4294967294
  %18 = icmp ugt i64 %15, 4294967295
  %19 = or i1 %17, %18
  %20 = trunc i64 %15 to i32
  %21 = icmp eq i32 %20, -1
  %22 = icmp ugt i64 %15, 4294967295
  %23 = or i1 %21, %22
  %24 = or i1 %19, %23
  br i1 %24, label %25, label %62

25:                                               ; preds = %14
  %26 = add nsw i64 %3, -3
  %27 = and i64 %26, 1
  %28 = icmp eq i64 %15, 0
  br i1 %28, label %70, label %29

29:                                               ; preds = %25
  %30 = and i64 %26, -2
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi i64 [ 3, %29 ], [ %59, %31 ]
  %33 = phi i64 [ 0, %29 ], [ %60, %31 ]
  %34 = trunc i64 %32 to i32
  %35 = add nsw i32 %34, -1
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %4, i64 %36
  %38 = load i32, i32* %37, align 4, !tbaa !5
  %39 = add nuw i64 %32, 4294967294
  %40 = and i64 %39, 4294967295
  %41 = getelementptr inbounds i32, i32* %4, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !5
  %43 = mul nsw i32 %42, %35
  %44 = add nsw i32 %43, %38
  %45 = getelementptr inbounds i32, i32* %4, i64 %32
  store i32 %44, i32* %45, align 4
  %46 = add nuw nsw i64 %32, 1
  %47 = trunc i64 %46 to i32
  %48 = add i32 %47, -1
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %4, i64 %49
  %51 = load i32, i32* %50, align 4, !tbaa !5
  %52 = add nuw i64 %32, 4294967295
  %53 = and i64 %52, 4294967295
  %54 = getelementptr inbounds i32, i32* %4, i64 %53
  %55 = load i32, i32* %54, align 4, !tbaa !5
  %56 = mul nsw i32 %55, %48
  %57 = add nsw i32 %56, %51
  %58 = getelementptr inbounds i32, i32* %4, i64 %46
  store i32 %57, i32* %58, align 4
  %59 = add nuw nsw i64 %32, 2
  %60 = add i64 %33, 2
  %61 = icmp eq i64 %60, %30
  br i1 %61, label %70, label %31, !llvm.loop !9

62:                                               ; preds = %14
  %63 = getelementptr i32, i32* %4, i64 2
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i64 %3, -3
  %66 = and i64 %65, 1
  %67 = icmp eq i64 %15, 0
  br i1 %67, label %86, label %68

68:                                               ; preds = %62
  %69 = and i64 %65, -2
  br label %106

70:                                               ; preds = %31, %25
  %71 = phi i64 [ 3, %25 ], [ %59, %31 ]
  %72 = icmp eq i64 %27, 0
  br i1 %72, label %100, label %73

73:                                               ; preds = %70
  %74 = trunc i64 %71 to i32
  %75 = add i32 %74, -1
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %4, i64 %76
  %78 = load i32, i32* %77, align 4, !tbaa !5
  %79 = add nuw i64 %71, 4294967294
  %80 = and i64 %79, 4294967295
  %81 = getelementptr inbounds i32, i32* %4, i64 %80
  %82 = load i32, i32* %81, align 4, !tbaa !5
  %83 = mul nsw i32 %82, %75
  %84 = add nsw i32 %83, %78
  %85 = getelementptr inbounds i32, i32* %4, i64 %71
  store i32 %84, i32* %85, align 4
  br label %100

86:                                               ; preds = %106, %62
  %87 = phi i32 [ %64, %62 ], [ %127, %106 ]
  %88 = phi i64 [ 3, %62 ], [ %129, %106 ]
  %89 = icmp eq i64 %66, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %86
  %91 = trunc i64 %88 to i32
  %92 = add i32 %91, -1
  %93 = add nuw i64 %88, 4294967294
  %94 = and i64 %93, 4294967295
  %95 = getelementptr inbounds i32, i32* %4, i64 %94
  %96 = load i32, i32* %95, align 4, !tbaa !5
  %97 = mul nsw i32 %96, %92
  %98 = add nsw i32 %97, %87
  %99 = getelementptr inbounds i32, i32* %4, i64 %88
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %90, %86, %73, %70, %11, %8, %6
  %101 = sext i32 %0 to i64
  %102 = getelementptr inbounds i32, i32* %4, i64 %101
  %103 = load i32, i32* %102, align 4, !tbaa !5
  br label %104

104:                                              ; preds = %1, %100
  %105 = phi i32 [ %103, %100 ], [ undef, %1 ]
  ret i32 %105

106:                                              ; preds = %106, %68
  %107 = phi i32 [ %64, %68 ], [ %127, %106 ]
  %108 = phi i64 [ 3, %68 ], [ %129, %106 ]
  %109 = phi i64 [ 0, %68 ], [ %130, %106 ]
  %110 = trunc i64 %108 to i32
  %111 = add nsw i32 %110, -1
  %112 = add nuw i64 %108, 4294967294
  %113 = and i64 %112, 4294967295
  %114 = getelementptr inbounds i32, i32* %4, i64 %113
  %115 = load i32, i32* %114, align 4, !tbaa !5
  %116 = mul nsw i32 %115, %111
  %117 = add nsw i32 %116, %107
  %118 = getelementptr inbounds i32, i32* %4, i64 %108
  store i32 %117, i32* %118, align 4
  %119 = add nuw nsw i64 %108, 1
  %120 = trunc i64 %119 to i32
  %121 = add i32 %120, -1
  %122 = add nuw i64 %108, 4294967295
  %123 = and i64 %122, 4294967295
  %124 = getelementptr inbounds i32, i32* %4, i64 %123
  %125 = load i32, i32* %124, align 4, !tbaa !5
  %126 = mul nsw i32 %125, %121
  %127 = add nsw i32 %126, %117
  %128 = getelementptr inbounds i32, i32* %4, i64 %119
  store i32 %127, i32* %128, align 4
  %129 = add nuw nsw i64 %108, 2
  %130 = add i64 %109, 2
  %131 = icmp eq i64 %130, %69
  br i1 %131, label %86, label %106, !llvm.loop !9
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FRIENDS_PAIRING_PROBLEM_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.peeled.count", i32 3}
