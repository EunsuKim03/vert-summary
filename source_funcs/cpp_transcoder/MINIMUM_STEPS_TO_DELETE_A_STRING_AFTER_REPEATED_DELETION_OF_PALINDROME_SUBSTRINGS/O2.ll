; ModuleID = 'benchmark/cpp_transcoder/MINIMUM_STEPS_TO_DELETE_A_STRING_AFTER_REPEATED_DELETION_OF_PALINDROME_SUBSTRINGS/MINIMUM_STEPS_TO_DELETE_A_STRING_AFTER_REPEATED_DELETION_OF_PALINDROME_SUBSTRINGS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MINIMUM_STEPS_TO_DELETE_A_STRING_AFTER_REPEATED_DELETION_OF_PALINDROME_SUBSTRINGS/MINIMUM_STEPS_TO_DELETE_A_STRING_AFTER_REPEATED_DELETION_OF_PALINDROME_SUBSTRINGS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MINIMUM_STEPS_TO_DELETE_A_STRING_AFTER_REPEATED_DELETION_OF_PALINDROME_SUBSTRINGS_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !5
  %4 = trunc i64 %3 to i32
  %5 = add i64 %3, 1
  %6 = and i64 %5, 4294967295
  %7 = mul nuw i64 %6, %6
  %8 = alloca i32, i64 %7, align 16
  %9 = icmp slt i32 %4, 0
  br i1 %9, label %71, label %10

10:                                               ; preds = %1
  %11 = shl nuw nsw i64 %6, 2
  %12 = add nsw i64 %6, -1
  %13 = and i64 %5, 7
  %14 = icmp ult i64 %12, 7
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = sub nsw i64 %6, %13
  br label %34

17:                                               ; preds = %34, %10
  %18 = phi i64 [ 0, %10 ], [ %68, %34 ]
  %19 = icmp eq i64 %13, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %17, %20
  %21 = phi i64 [ %26, %20 ], [ %18, %17 ]
  %22 = phi i64 [ %27, %20 ], [ 0, %17 ]
  %23 = mul nuw nsw i64 %6, %21
  %24 = getelementptr i32, i32* %8, i64 %23
  %25 = bitcast i32* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 %11, i1 false), !tbaa !12
  %26 = add nuw nsw i64 %21, 1
  %27 = add i64 %22, 1
  %28 = icmp eq i64 %27, %13
  br i1 %28, label %29, label %20, !llvm.loop !14

29:                                               ; preds = %20, %17
  %30 = icmp slt i32 %4, 1
  br i1 %30, label %71, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %33 = and i64 %3, 4294967295
  br label %77

34:                                               ; preds = %34, %15
  %35 = phi i64 [ 0, %15 ], [ %68, %34 ]
  %36 = phi i64 [ 0, %15 ], [ %69, %34 ]
  %37 = mul nuw nsw i64 %6, %35
  %38 = getelementptr i32, i32* %8, i64 %37
  %39 = bitcast i32* %38 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %39, i8 0, i64 %11, i1 false), !tbaa !12
  %40 = or i64 %35, 1
  %41 = mul nuw nsw i64 %6, %40
  %42 = getelementptr i32, i32* %8, i64 %41
  %43 = bitcast i32* %42 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %43, i8 0, i64 %11, i1 false), !tbaa !12
  %44 = or i64 %35, 2
  %45 = mul nuw nsw i64 %6, %44
  %46 = getelementptr i32, i32* %8, i64 %45
  %47 = bitcast i32* %46 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %47, i8 0, i64 %11, i1 false), !tbaa !12
  %48 = or i64 %35, 3
  %49 = mul nuw nsw i64 %6, %48
  %50 = getelementptr i32, i32* %8, i64 %49
  %51 = bitcast i32* %50 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %51, i8 0, i64 %11, i1 false), !tbaa !12
  %52 = or i64 %35, 4
  %53 = mul nuw nsw i64 %6, %52
  %54 = getelementptr i32, i32* %8, i64 %53
  %55 = bitcast i32* %54 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %55, i8 0, i64 %11, i1 false), !tbaa !12
  %56 = or i64 %35, 5
  %57 = mul nuw nsw i64 %6, %56
  %58 = getelementptr i32, i32* %8, i64 %57
  %59 = bitcast i32* %58 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %59, i8 0, i64 %11, i1 false), !tbaa !12
  %60 = or i64 %35, 6
  %61 = mul nuw nsw i64 %6, %60
  %62 = getelementptr i32, i32* %8, i64 %61
  %63 = bitcast i32* %62 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %63, i8 0, i64 %11, i1 false), !tbaa !12
  %64 = or i64 %35, 7
  %65 = mul nuw nsw i64 %6, %64
  %66 = getelementptr i32, i32* %8, i64 %65
  %67 = bitcast i32* %66 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %67, i8 0, i64 %11, i1 false), !tbaa !12
  %68 = add nuw nsw i64 %35, 8
  %69 = add i64 %36, 8
  %70 = icmp eq i64 %69, %16
  br i1 %70, label %17, label %34, !llvm.loop !16

71:                                               ; preds = %83, %1, %29
  %72 = shl i64 %3, 32
  %73 = add i64 %72, -4294967296
  %74 = ashr exact i64 %73, 32
  %75 = getelementptr inbounds i32, i32* %8, i64 %74
  %76 = load i32, i32* %75, align 4, !tbaa !12
  ret i32 %76

77:                                               ; preds = %83, %31
  %78 = phi i32 [ %4, %31 ], [ %86, %83 ]
  %79 = phi i64 [ 0, %31 ], [ %85, %83 ]
  %80 = phi i32 [ 1, %31 ], [ %84, %83 ]
  %81 = icmp eq i32 %80, 1
  %82 = zext i32 %78 to i64
  br label %88

83:                                               ; preds = %157
  %84 = add nuw nsw i32 %80, 1
  %85 = add nuw nsw i64 %79, 1
  %86 = add i32 %78, -1
  %87 = icmp eq i64 %85, %33
  br i1 %87, label %71, label %77, !llvm.loop !18

88:                                               ; preds = %77, %157
  %89 = phi i64 [ 0, %77 ], [ %158, %157 ]
  %90 = phi i64 [ %79, %77 ], [ %159, %157 ]
  %91 = phi i32 [ %80, %77 ], [ %161, %157 ]
  %92 = phi i32 [ 2, %77 ], [ %160, %157 ]
  %93 = sext i32 %92 to i64
  br i1 %81, label %94, label %99

94:                                               ; preds = %88
  %95 = mul nuw nsw i64 %6, %89
  %96 = getelementptr inbounds i32, i32* %8, i64 %95
  %97 = getelementptr inbounds i32, i32* %96, i64 %90
  store i32 1, i32* %97, align 4, !tbaa !12
  %98 = add nuw nsw i64 %89, 1
  br label %157

99:                                               ; preds = %88
  %100 = add nuw nsw i64 %89, 1
  %101 = mul nuw nsw i64 %6, %100
  %102 = getelementptr inbounds i32, i32* %8, i64 %101
  %103 = getelementptr inbounds i32, i32* %102, i64 %90
  %104 = load i32, i32* %103, align 4, !tbaa !12
  %105 = add nsw i32 %104, 1
  %106 = mul nuw nsw i64 %6, %89
  %107 = getelementptr inbounds i32, i32* %8, i64 %106
  %108 = getelementptr inbounds i32, i32* %107, i64 %90
  store i32 %105, i32* %108, align 4, !tbaa !12
  %109 = load i8*, i8** %32, align 8, !tbaa !19
  %110 = getelementptr inbounds i8, i8* %109, i64 %89
  %111 = load i8, i8* %110, align 1, !tbaa !20
  %112 = getelementptr inbounds i8, i8* %109, i64 %100
  %113 = load i8, i8* %112, align 1, !tbaa !20
  %114 = icmp eq i8 %111, %113
  %115 = add nuw nsw i64 %89, 2
  br i1 %114, label %116, label %124

116:                                              ; preds = %99
  %117 = mul nuw nsw i64 %6, %115
  %118 = getelementptr inbounds i32, i32* %8, i64 %117
  %119 = getelementptr inbounds i32, i32* %118, i64 %90
  %120 = load i32, i32* %119, align 4, !tbaa !12
  %121 = add nsw i32 %120, 1
  %122 = icmp slt i32 %105, %121
  %123 = select i1 %122, i32 %105, i32 %121
  store i32 %123, i32* %108, align 4, !tbaa !12
  br label %124

124:                                              ; preds = %99, %116
  %125 = phi i32 [ %123, %116 ], [ %105, %99 ]
  %126 = shl i64 %115, 32
  %127 = ashr exact i64 %126, 32
  %128 = icmp sgt i64 %127, %90
  br i1 %128, label %157, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds i32, i32* %8, i64 %90
  br label %131

131:                                              ; preds = %129, %152
  %132 = phi i32 [ %125, %129 ], [ %154, %152 ]
  %133 = phi i64 [ %93, %129 ], [ %153, %152 ]
  %134 = and i64 %133, 4294967295
  %135 = getelementptr inbounds i8, i8* %109, i64 %134
  %136 = load i8, i8* %135, align 1, !tbaa !20
  %137 = icmp eq i8 %111, %136
  br i1 %137, label %140, label %138

138:                                              ; preds = %131
  %139 = add nsw i64 %133, 1
  br label %152

140:                                              ; preds = %131
  %141 = add nsw i64 %133, -1
  %142 = getelementptr inbounds i32, i32* %102, i64 %141
  %143 = load i32, i32* %142, align 4, !tbaa !12
  %144 = add nsw i64 %133, 1
  %145 = and i64 %144, 4294967295
  %146 = mul nuw nsw i64 %6, %145
  %147 = getelementptr inbounds i32, i32* %130, i64 %146
  %148 = load i32, i32* %147, align 4, !tbaa !12
  %149 = add nsw i32 %148, %143
  %150 = icmp slt i32 %132, %149
  %151 = select i1 %150, i32 %132, i32 %149
  store i32 %151, i32* %108, align 4, !tbaa !12
  br label %152

152:                                              ; preds = %138, %140
  %153 = phi i64 [ %139, %138 ], [ %144, %140 ]
  %154 = phi i32 [ %132, %138 ], [ %151, %140 ]
  %155 = trunc i64 %153 to i32
  %156 = icmp eq i32 %91, %155
  br i1 %156, label %157, label %131, !llvm.loop !21

157:                                              ; preds = %152, %124, %94
  %158 = phi i64 [ %100, %124 ], [ %98, %94 ], [ %100, %152 ]
  %159 = add nuw nsw i64 %90, 1
  %160 = add nuw i32 %92, 1
  %161 = add nuw i32 %91, 1
  %162 = icmp eq i64 %158, %82
  br i1 %162, label %83, label %88, !llvm.loop !22
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MINIMUM_STEPS_TO_DELETE_A_STRING_AFTER_REPEATED_DELETION_OF_PALINDROME_SUBSTRINGS_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !11, i64 8}
!6 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !7, i64 0, !11, i64 8, !9, i64 16}
!7 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = !{!6, !8, i64 0}
!20 = !{!9, !9, i64 0}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
